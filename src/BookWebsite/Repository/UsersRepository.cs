using System;
using System.Data;
using System.IO;
using BookWebsite.Interfaces;
using BookWebsite.Models;
using DBManager;
using GlobalEntities.Entities;
using GlobalEntities.Methods;
using GlobalEntities.Variables;
using static GlobalEntities.Enums.GlobalEnums;

namespace BookWebsite.Repository
{
    public class UsersRepository : UsersInterface
    {
        public CommonResponse ForgetPassword(UsersForgetPasswordViewModel usersForgetPasswordViewModel)
        {
            throw new NotImplementedException();
        }

        public CommonResponse UpdatePassword(UsersForgetPasswordViewModel usersForgetPasswordViewModel)
        {
            throw new NotImplementedException();
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
                        ResponseMsg = ResponseMessage.Success,
                        ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                    };
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to add menu veriants.",
                        ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                    };
                }

            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
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
                        ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                    };
                }

                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_In_UpdateUserImage, ref errMsg, usersImageUploadViewModel.UserId, filename);
                if (response != 0)
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.Success,
                        ResponseMsg = ResponseMessage.Success,
                        ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                    };
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to add menu veriants.",
                        ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                    };
                }

            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
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

                        return new CommonResponse
                        {
                            ResponseCode = (int)ResponseCode.Success,
                            ResponseMsg = ResponseMessage.Success,
                            ResponseUserMsg = ResponseMessage.GetMenuCategorySuccess,
                            ResponseData = model
                        };

                    }
                    else
                    {
                        return new CommonResponse
                        {
                            ResponseCode = (int)ResponseCode.OperationFailed,
                            ResponseMsg = "Failed to get menu categoty.",
                            ResponseUserMsg = ResponseMessage.GetMenuCategoryFailed
                        };

                    }
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to get menu categoty.",
                        ResponseUserMsg = ResponseMessage.GetMenuCategoryFailed
                    };
                }


            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = ResponseMessage.GetMenuCategoryFailed
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
                        ResponseMsg = ResponseMessage.Success,
                        ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                    };
                }
                else
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.OperationFailed,
                        ResponseMsg = "Failed to add menu veriants.",
                        ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                    };
                }

            }
            catch (Exception exception)
            {
                return new CommonResponse
                {
                    ResponseCode = (int)ResponseCode.OperationFailed,
                    ResponseMsg = exception.Message,
                    ResponseUserMsg = ResponseMessage.MenuItemAddSuccess
                };
            }
        }
    }
}