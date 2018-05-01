using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.Owin.Security;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.AspNet.Identity;
using Microsoft.Owin;


namespace headsetku.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void LoginUser(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
            var userIdentity = userManager.CreateIdentity(
                user, DefaultAuthenticationTypes.ApplicationCookie);
            authenticationManager.SignIn(new Microsoft.Owin.Security.AuthenticationProperties() { }, userIdentity);

            if (Request.QueryString["Pages/Login.aspx"] != null)
            {
                Response.Redirect(Request.QueryString["Pages/Login.aspx"]);

            }
            else
            {
                String userRoles = userManager.GetRoles(user.Id).FirstOrDefault();


                if (userRoles.Equals("Admin"))
                {
                    Response.Redirect("~/admin/Index.aspx");
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);


           var user = userManager.Find(txtLoginEmail.Text, txtLoginPassword.Text);
            if (user != null)
            {

                LoginUser(userManager, user);
                litLoginError.Text = "Log in Success!!";

            }
            else
            {
                litLoginError.Text = "Invalid username or password";
                ;
            }

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            var identityDbContext = new IdentityDbContext("IdentityConnection");
            var userStore = new UserStore<IdentityUser>(identityDbContext);
            var userManager = new UserManager<IdentityUser>(userStore);
            var user = new IdentityUser() { UserName = txtRegEmail.Text, Email = txtRegEmail.Text };

            var IdentityDbContext = new IdentityDbContext("IdentityConnection");
            var roleStore = new RoleStore<IdentityRole>(IdentityDbContext);
            var rolemanager = new RoleManager<IdentityRole>(roleStore);

            IdentityRole adminRole = new IdentityRole("RegisteredUser");
            rolemanager.Create(adminRole);

            IdentityResult result = userManager.Create(user, txtRegPassword.Text);
            if (result.Succeeded)

            {

                userManager.AddToRole(user.Id, "RegisteredUser");
                userManager.Update(user);

                litRegisterResult.Text = "Success";
            }

            else
            {
                litRegisterError.Text = "An error has occured: " + result.Errors.FirstOrDefault();
            }

        }
    }
}