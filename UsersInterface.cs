using BookWebsite.Models;
using GlobalEntities.Entities;

namespace BookWebsite.Interfaces
{
    interface UsersInterface
    {
        CommonResponse UserRegister(UsersRegistrationViewModel usersRegistrationViewModel);
        CommonResponse UpdateUserProfile(UsersRegistrationViewModel usersRegistrationViewModel);
        CommonResponse UserLogin(UsersLoginViewModel usersLoginViewModel);
        CommonResponse UploadUsersImage(UsersImageUploadViewModel usersImageUploadViewModel);
        CommonResponse ForgetPassword(UsersForgetPasswordViewModel usersForgetPasswordViewModel);
        CommonResponse UpdatePassword(string userId,string password);
    }
}
