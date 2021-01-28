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
    public class CategoryRepository
    {
        public CommonResponse GetAllCategory()
        {

            try
            {
                string errMsg = string.Empty;
                DataTable dt = (new ProcedureManager(DBName.BookDb, ref errMsg)).ExecSPreturnDataTable(ExecutionSP.sp_Get_AllCategory, ref errMsg);

                if (dt != null)
                {
                    if (dt.Rows.Count > 0)
                    {

                        List<CategoryViewModel> models = new List<CategoryViewModel>();

                        for (int i = 0; i < dt.Rows.Count; i++)
                        {
                            CategoryViewModel model = new CategoryViewModel()
                            {
                                Id = dt.Rows[i]["Id"].ToString().Trim(),
                                Name = dt.Rows[i]["Name"].ToString().Trim(),
                                Description = dt.Rows[i]["Description"].ToString().Trim(),
                                Status = dt.Rows[i]["Status"].ToString().Trim()
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
        public CommonResponse AddCategory(CategoryViewModel categoryView)
        {

            try
            {
                string errMsg = string.Empty;
                int response = new ProcedureManager(DBName.BookDb, ref errMsg).ExecuteNonQuery(ExecutionSP.sp_In_Category, ref errMsg, categoryView.Name);
                if (response != 0)
                {
                    return new CommonResponse
                    {
                        ResponseCode = (int)ResponseCode.Success,
                        ResponseMsg = ResponseMessage.Success,
                        ResponseData = response.ToString(),
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