using BookWebsite.Provider;
using Microsoft.Owin;
using Microsoft.Owin.Cors;
using Microsoft.Owin.Security.OAuth;
using Owin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;

[assembly:OwinStartup(typeof(BookWebsite.Startup))]
namespace BookWebsite
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            HttpConfiguration configuration = new HttpConfiguration();
            ConfigureAuth(app);
            WebApiConfig.Register(configuration);
            app.UseCors(Microsoft.Owin.Cors.CorsOptions.AllowAll);
            app.UseWebApi(configuration);
        }

        public void ConfigureAuth(IAppBuilder app)
        {
            var OAuthOptions = new OAuthAuthorizationServerOptions
            {
                AllowInsecureHttp = true,
                TokenEndpointPath = new PathString("/token"),
                AccessTokenExpireTimeSpan = TimeSpan.FromDays(30),
                Provider = new OauthProvider()
            };

            app.UseOAuthAuthorizationServer(OAuthOptions);
            app.UseOAuthBearerAuthentication(new OAuthBearerAuthenticationOptions());

        }
    }
}