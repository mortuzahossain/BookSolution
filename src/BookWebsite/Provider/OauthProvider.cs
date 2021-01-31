using Microsoft.Owin.Security.OAuth;
using System.Configuration;
using System.Security.Claims;
using System.Threading.Tasks;

namespace BookWebsite.Provider
{
    public class OauthProvider: OAuthAuthorizationServerProvider
    {
        public override async Task ValidateClientAuthentication(OAuthValidateClientAuthenticationContext context)
        {
            await Task.Run(() => context.Validated());
        }
        public override async Task GrantResourceOwnerCredentials(OAuthGrantResourceOwnerCredentialsContext context)
        {
            var identity = new ClaimsIdentity(context.Options.AuthenticationType);
            
            if (context.UserName != null)
            {
                if (context.UserName == ConfigurationManager.AppSettings["UserName"] && context.Password == ConfigurationManager.AppSettings["Password"])
                {
                    await Task.Run(() => context.Validated(identity));
                }
                else
                {
                    context.SetError("Error", "Invalid Cradentials.");
                }
            }
            else
            {
                context.SetError("Error", "Unauthorized access.");
            }
        }
    }
}