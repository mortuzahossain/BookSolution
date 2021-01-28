﻿using BookWebsite.Models;
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
        public CommonResponse LikeDislikeBook(string bookId,string likeDislike)
        {

            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_InUpLikeDislike, ref errMsg,bookId, likeDislike);
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
        public CommonResponse DownloadBookByUser(string userId,string bookId)
        {

            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_In_DownloadBookByUser, ref errMsg, userId,bookId);
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
        public CommonResponse FavouriteBookByUser(string userId,string bookId)
        {

            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_In_FaviourateBookByUser, ref errMsg, userId,bookId);
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
        public CommonResponse GetBooksByCategoryId(string categoryId)
        {

            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_GetBooksByCategoryId, ref errMsg, categoryId);

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
                                DownloadSize = dt.Rows[i]["DownloadSize"].ToString().Trim(),
                                Thumbnails = dt.Rows[i]["Thumbnails"].ToString().Trim()
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
        public CommonResponse GetBookDetails(string bookId,string userId)
        {

            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_BookDetails, ref errMsg, bookId,userId);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {

                        BookViewModel model = new BookViewModel();

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            model = new BookViewModel()
                            {
                                Description = dt.Rows[i]["Description"].ToString().Trim(),
                                DownloadLink = dt.Rows[i]["DownloadLink"].ToString().Trim(),
                                Price = dt.Rows[i]["Price"].ToString().Trim(),
                                LikeCount = dt.Rows[i]["LikeCount"].ToString().Trim(),
                                DislikeCount = dt.Rows[i]["DislikeCount"].ToString().Trim()
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
        public CommonResponse GetTopBooks(string limit)
        {

            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_TopBooks, ref errMsg,limit);

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
                                DownloadSize = dt.Rows[i]["DownloadSize"].ToString().Trim(),
                                Thumbnails = dt.Rows[i]["Thumbnails"].ToString().Trim()
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
        public CommonResponse GetFavouriteBooksOfUser(string userId)
        {

            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_FaviourateBooksOfUser, ref errMsg,userId);

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
                                DownloadSize = dt.Rows[i]["DownloadSize"].ToString().Trim(),
                                Thumbnails = dt.Rows[i]["Thumbnails"].ToString().Trim()
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

        // Book Search
    }
}