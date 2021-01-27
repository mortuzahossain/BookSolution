using BookWebsite.Models;
using DBManager;
using GlobalEntities.Entities;
using GlobalEntities.Variables;
using System;
using System.Collections.Generic;
using System.Data;
using static GlobalEntities.Enums.GlobalEnums;

namespace BookWebsite.Repository
{
    public class BookRepository
    {
        public CommonResponse AddBooks(BookViewModel bookViewModel)
        {

            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_In_Books, ref errMsg, bookViewModel.Name, bookViewModel.DisplayName, bookViewModel.Description, bookViewModel.Thumbnails,bookViewModel.DownloadSize, bookViewModel.DownloadLink, bookViewModel.CategoryId);
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
        public CommonResponse GetBooksById(string categoryId)
        {

            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_AllCategory, ref errMsg);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {

                        List<BookViewModel> models = new List<BookViewModel>();

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            BookViewModel model = new BookViewModel()
                            {
                                Id = dt.Rows[i]["Id"].ToString().Trim(),
                                Name = dt.Rows[i]["Name"].ToString().Trim(),
                                DisplayName = dt.Rows[i]["DisplayName"].ToString().Trim(),
                                Description = dt.Rows[i]["Description"].ToString().Trim(),
                                DownloadLink = dt.Rows[i]["DownloadLink"].ToString().Trim(),
                                DownloadSize = dt.Rows[i]["DownloadSize"].ToString().Trim(),
                                Thumbnails = dt.Rows[i]["Thumbnails"].ToString().Trim(),
                                Price = dt.Rows[i]["Price"].ToString().Trim()
                            };

                            models.Add(model);
                        }

                        return new CommonResponse
                        {
                            ResponseCode = (int)ResponseCode.Success,
                            ResponseMsg = ResponseMessage.Success,
                            ResponseUserMsg = ResponseMessage.GetMenuCategorySuccess,
                            ResponseData = models
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
        public CommonResponse GetTopBooks(string limit)
        {

            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_AllCategory, ref errMsg);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {

                        List<BookViewModel> models = new List<BookViewModel>();

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            BookViewModel model = new BookViewModel()
                            {
                                Id = dt.Rows[i]["Id"].ToString().Trim(),
                                Name = dt.Rows[i]["Name"].ToString().Trim(),
                                DisplayName = dt.Rows[i]["DisplayName"].ToString().Trim(),
                                Description = dt.Rows[i]["Description"].ToString().Trim(),
                                DownloadLink = dt.Rows[i]["DownloadLink"].ToString().Trim(),
                                DownloadSize = dt.Rows[i]["DownloadSize"].ToString().Trim(),
                                Thumbnails = dt.Rows[i]["Thumbnails"].ToString().Trim(),
                                Price = dt.Rows[i]["Price"].ToString().Trim()
                            };

                            models.Add(model);
                        }

                        return new CommonResponse
                        {
                            ResponseCode = (int)ResponseCode.Success,
                            ResponseMsg = ResponseMessage.Success,
                            ResponseUserMsg = ResponseMessage.GetMenuCategorySuccess,
                            ResponseData = models
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
    }
}