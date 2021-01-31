using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Http;
using BookWebsite.Interfaces;
using BookWebsite.Models;
using DBManager;
using GlobalEntities.Entities;
using GlobalEntities.Methods;
using GlobalEntities.Variables;
using Newtonsoft.Json;
using static GlobalEntities.Enums.GlobalEnums;

namespace BookWebsite.Repository
{
    public class UsersRepository : UsersInterface
    {
        public CommonResponse ForgetPassword(UsersForgetPasswordViewModel usersForgetPasswordViewModel)
        {
            CommonResponse commonResponse = new CommonResponse();

            try
            {
                string errMsg = string.Empty;
                int userId = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_Get_UserByEmailId, ref errMsg, usersForgetPasswordViewModel.EmailAddress);
                if (userId == 0)
                {
                    commonResponse.ResponseCode = (int)ResponseCode.OperationFailed;
                    commonResponse.ResponseMsg = "";
                    commonResponse.ResponseUserMsg = "";
                    return commonResponse;
                }

                string passwordPlain = SecurityUtility.RandomString(8);
                string password = SecurityUtility.Hash(passwordPlain);
                commonResponse = UpdatePassword(userId.ToString(), password);
                if (commonResponse.ResponseCode == (int)ResponseCode.Success)
                {
                    string subject = "FreeBook Login Credentials";
                    string content = "Your login credential:" + Environment.NewLine + "Login Id: [loginid]" + Environment.NewLine + "Password: [password]" + Environment.NewLine + "Regards" + Environment.NewLine + "Flora Systems ltd";
                    content = content.Replace("[loginid]", usersForgetPasswordViewModel.EmailAddress);
                    content = content.Replace("[password]", passwordPlain);
                    commonResponse = GeneralUtility.SendMail(usersForgetPasswordViewModel.EmailAddress, subject, content);
                }


            }
            catch (Exception exception)
            {
                commonResponse.ResponseCode = (int)ResponseCode.OperationFailed;
                commonResponse.ResponseMsg = exception.Message;
            }

            return commonResponse;
        }

        public CommonResponse UpdatePassword(string userId, string password)
        {
            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_Up_UsersPassword, ref errMsg, userId, password);
                if (response != 0)
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.Success,
                        ResponseMsg = RespMessage.Success,
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }

                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = "Failed to add menu veriants.",
                    ResponseUserMsg = RespMessage.MenuItemAddSuccess
                };

            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = RespMessage.MenuItemAddSuccess
                };
            }
        }

        public CommonResponse UpdateUserProfile(UsersRegistrationViewModel usersRegistrationViewModel)
        {
            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_Up_Users, ref errMsg, usersRegistrationViewModel.UserId, usersRegistrationViewModel.Name, usersRegistrationViewModel.Email, usersRegistrationViewModel.Phone);
                if (response != 0)
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.Success,
                        ResponseMsg = RespMessage.Success,
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to add menu veriants.",
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }

            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = RespMessage.MenuItemAddSuccess
                };
            }
        }

        public CommonResponse UploadUsersImage(UsersImageUploadViewModel usersImageUploadViewModel)
        {
            try
            {
                string errMsg = string.Empty;
               
                string path = System.Web.HttpContext.Current.Server.MapPath("~/ImageStorage/ProfilePics");
                if (!Directory.Exists(path))
                {
                    Directory.CreateDirectory(path);
                }

                string filename = DateTime.Now.Ticks + ".jpeg";
                if (!GeneralUtility.SaveByteArrayAsImage(path + "/" + filename, usersImageUploadViewModel.ProfileImageUrl))
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to add menu veriants.",
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }

                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_In_UpdateUserImage, ref errMsg, usersImageUploadViewModel.UserId, filename);
                if (response != 0)
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.Success,
                        ResponseMsg = RespMessage.Success,
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to add menu veriants.",
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }

            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = RespMessage.MenuItemAddSuccess
                };
            } 
        }

        public CommonResponse UserLogin(UsersLoginViewModel usersLoginViewModel)
        {
            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_UserProfileForLogin, ref errMsg, usersLoginViewModel.EmailAddress, usersLoginViewModel.Password);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {

                        UsersModel model = new UsersModel();

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            model = new UsersModel()
                            {
                                UserId = dt.Rows[i]["UserId"].ToString().Trim(),
                                Name = dt.Rows[i]["Name"].ToString().Trim(),
                                Email = dt.Rows[i]["Email"].ToString().Trim(),
                                Phone = dt.Rows[i]["Phone"].ToString().Trim(),
                                Images = dt.Rows[i]["Images"].ToString().Trim()
                            };

                        }

                        Token token = JsonConvert.DeserializeObject<Token>(GetToken(ConfigurationManager.AppSettings["UserName"], ConfigurationManager.AppSettings["Password"]));
                        model.UserToken = token.access_token;
                        return new CommonResponse
                        {
                            ResponseCode = (int)ResponseCode.Success,
                            ResponseMsg = RespMessage.Success,
                            ResponseUserMsg = RespMessage.GetMenuCategorySuccess,
                            ResponseData = model
                        };

                    }
                    else
                    {
                        return new CommonResponse
                        {
                            ResponseCode = (int)ResponseCode.OperationFailed,
                            ResponseMsg = "Failed to get menu categoty.",
                            ResponseUserMsg = RespMessage.GetMenuCategoryFailed
                        };

                    }
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to get menu categoty.",
                        ResponseUserMsg = RespMessage.GetMenuCategoryFailed
                    };
                }


            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = RespMessage.GetMenuCategoryFailed
                };
            }
        }

        public CommonResponse UserRegister(UsersRegistrationViewModel usersRegistrationViewModel)
        {
            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_In_Users, ref errMsg, usersRegistrationViewModel.Name, usersRegistrationViewModel.Email, usersRegistrationViewModel.Phone, usersRegistrationViewModel.Password);
                if (response != 0)
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.Success,
                        ResponseMsg = RespMessage.Success,
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to add menu veriants.",
                        ResponseUserMsg = RespMessage.MenuItemAddSuccess
                    };
                }

            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = RespMessage.MenuItemAddSuccess
                };
            }
        }

        public string GetToken(string userName, string password)
        {
            var pairs = new List<KeyValuePair<string, string>>
            {
                new KeyValuePair<string, string>( "grant_type", "password" ),
                new KeyValuePair<string, string>( "Username", userName ),
                new KeyValuePair<string, string> ( "Password", password )
            };
            var content = new FormUrlEncodedContent(pairs);
            ServicePointManager.ServerCertificateValidationCallback += (sender, cert, chain, sslPolicyErrors) => true;
            using (var client = new HttpClient())
            {
                var response = client.PostAsync(ConfigurationManager.AppSettings["ApplicationUrl"] + "Token", content).Result;
                return response.Content.ReadAsStringAsync().Result;
            }
        }

        public class Token
        {
            public string access_token { get; set; }
            public string token_type { get; set; }
            public int expires_in { get; set; }
            public string userName { get; set; }
            public string issued { get; set; }
            public string expires { get; set; }
        }
    }
}