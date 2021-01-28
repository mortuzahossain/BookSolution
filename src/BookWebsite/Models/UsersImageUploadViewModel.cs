using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookWebsite.Models
{
    public class UsersImageUploadViewModel
    {
        public string UserId { get; set; }
        public HttpPostedFileBase ProfileImage { get; set; }
        public string ProfileImageUrl { get; set; }
    }
}