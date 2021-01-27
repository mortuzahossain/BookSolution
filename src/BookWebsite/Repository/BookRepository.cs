using BookWebsite.Models;
using DBManager;
using GlobalEntities.Entities;
using GlobalEntities.Variables;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
    }
}