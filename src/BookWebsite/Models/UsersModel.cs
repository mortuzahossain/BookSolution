using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookWebsite.Models
{
    public class UsersModel
    {
        public string UserId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public string Images { get; set; }
        public string UserToken { get; set; }
    }

}