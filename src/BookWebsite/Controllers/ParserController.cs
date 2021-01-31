using BookWebsite.Models;
using BookWebsite.Repository;
using GlobalEntities.Entities;
using GlobalEntities.Enums;
using Newtonsoft.Json;
using System;
using System.Web.Http;
using static GlobalEntities.Enums.GlobalEnums;

namespace BookWebsite.Controllers
{
    public class ParserController : ApiController
    {
        [HttpPost]
        public CommonResponse Post(CommonRequest commonRequest)
        {

            CommonResponse commonResponse = new CommonResponse();
            commonResponse.ResponseCode = (int)ResponseCode.OperationFailed;
            commonResponse.ResponseMsg = RespMessage.NoAction;
            commonResponse.ResponseUserMsg = RespMessage.NoAction;


            if (string.IsNullOrEmpty(commonRequest.Mti) || string.IsNullOrEmpty(commonRequest.Mti)) return commonResponse;

            switch (Int64.Parse(commonRequest.Mti))
            {
                #region User
                case (int)MTI.UserRegister:
                    try
                    {
                        UsersRegistrationViewModel usersRegistrationViewModel = JsonConvert.DeserializeObject<UsersRegistrationViewModel>(commonRequest.Data);
                        return new UsersRepository().UserRegister(usersRegistrationViewModel);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.UserLogin:
                    try
                    {
                        UsersLoginViewModel usersLoginViewModel = JsonConvert.DeserializeObject<UsersLoginViewModel>(commonRequest.Data);
                        return new UsersRepository().UserLogin(usersLoginViewModel);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.UpdateUserProfile:
                    try
                    {
                        UsersRegistrationViewModel usersRegistrationViewModel = JsonConvert.DeserializeObject<UsersRegistrationViewModel>(commonRequest.Data);
                        return new UsersRepository().UpdateUserProfile(usersRegistrationViewModel);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.UploadUsersImage:
                    try
                    {
                        UsersImageUploadViewModel usersImageUploadViewModel = JsonConvert.DeserializeObject<UsersImageUploadViewModel>(commonRequest.Data);
                        return new UsersRepository().UploadUsersImage(usersImageUploadViewModel);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.ForgetPassword:
                    try
                    {
                        UsersForgetPasswordViewModel forgetPasswordViewModel = JsonConvert.DeserializeObject<UsersForgetPasswordViewModel>(commonRequest.Data);
                        return new UsersRepository().ForgetPassword(forgetPasswordViewModel);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.UpdatePassword:
                    try
                    {
                        UpdatePasswordModel updatePasswordModel = JsonConvert.DeserializeObject<UpdatePasswordModel>(commonRequest.Data);
                        return new UsersRepository().UpdatePassword(updatePasswordModel.UserId,updatePasswordModel.Password);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                #endregion


                #region Category
                case (int)MTI.GetAllCategory:
                    return new CategoryRepository().GetAllCategory();
                #endregion


                #region Books
                case (int)MTI.GetBooksByCategoryId:
                    try
                    {
                        BooksByCategoryIdModel booksByCategoryIdModel = JsonConvert.DeserializeObject<BooksByCategoryIdModel>(commonRequest.Data);
                        return new BookRepository().GetBooksByCategoryId(booksByCategoryIdModel.CategoryId);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.GetTopBooks:
                    try
                    {
                        GetTopBooksModel getTopBooks = JsonConvert.DeserializeObject<GetTopBooksModel>(commonRequest.Data);
                        return new BookRepository().GetTopBooks(getTopBooks.Limit);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.GetBookDetails:
                    try
                    {
                        GetBookDetailsModel getBookDetails = JsonConvert.DeserializeObject<GetBookDetailsModel>(commonRequest.Data);
                        return new BookRepository().GetBookDetails(getBookDetails.BookId, getBookDetails.UserId);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.LikeDislikeBook:
                    try
                    {
                        LikeDislikeBookModel likeDislikeBookModel = JsonConvert.DeserializeObject<LikeDislikeBookModel>(commonRequest.Data);
                        return new BookRepository().LikeDislikeBook(likeDislikeBookModel.BookId, likeDislikeBookModel.UserId, likeDislikeBookModel.LikeDislike);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.DownloadBookByUser:
                    try
                    {
                        DownloadBookByUserModel downloadBookByUser = JsonConvert.DeserializeObject<DownloadBookByUserModel>(commonRequest.Data);
                        return new BookRepository().DownloadBookByUser(downloadBookByUser.UserId, downloadBookByUser.BookId);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.FaviourateBookByUser:
                    try
                    {
                        FaviourateBookByUserModel faviourateBookByUser = JsonConvert.DeserializeObject<FaviourateBookByUserModel>(commonRequest.Data);
                        return new BookRepository().MakeFaviourateBookByUser(faviourateBookByUser.UserId, faviourateBookByUser.BookId);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.GetFaviourateBooksOfUser:
                    try
                    {
                        GetFaviourateBooksOfUserModel faviourateBooksOfUserModel = JsonConvert.DeserializeObject<GetFaviourateBooksOfUserModel>(commonRequest.Data);
                        return new BookRepository().GetFaviourateBooksOfUser(faviourateBooksOfUserModel.UserId);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                case (int)MTI.SearchBooks:
                    try
                    {
                        SearchBooksModel searchBooksModel = JsonConvert.DeserializeObject<SearchBooksModel>(commonRequest.Data);
                        return new BookRepository().SearchBooks(searchBooksModel.UserId,searchBooksModel.KeyWords);
                    }
                    catch
                    {
                        return commonResponse;
                    }
                #endregion
                

                default:
                    return commonResponse;
            }


        }
    }

    #region API MODELS

    class SearchBooksModel
    {
        public string UserId { get; set; }
        public string KeyWords { get; set; }
    }
    class GetFaviourateBooksOfUserModel
    {
        public string UserId { get; set; }
    }
    class LikeDislikeBookModel
    {
        public string UserId { get; set; }
        public string BookId { get; set; }
        public string LikeDislike { get; set; }
    }
    class FaviourateBookByUserModel
    {
        public string UserId { get; set; }
        public string BookId { get; set; }
    }
    class DownloadBookByUserModel
    {
        public string UserId { get; set; }
        public string BookId { get; set; }
    }
    class GetBookDetailsModel
    {
        public string UserId { get; set; }
        public string BookId { get; set; }
    }
    class GetTopBooksModel
    {
        public string UserId { get; set; }
        public string Limit { get; set; }
    }

    class BooksByCategoryIdModel
    {
        public string UserId { get; set; }
        public string CategoryId { get; set; }
    }
    class UpdatePasswordModel
    {
        public string UserId { get; set; }
        public string Password { get; set; }
    }

    #endregion
}
