﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BookWebsite.Models
{
    public class UsersUpdatePasswordViewModel
    {
        public string UserId { get; set; }
        public string Password { get; set; }
    }
}