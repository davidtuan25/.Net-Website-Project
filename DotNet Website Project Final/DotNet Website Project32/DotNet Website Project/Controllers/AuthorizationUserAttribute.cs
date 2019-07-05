using DotNet_Website_Project.Models;
using System;
using System.Diagnostics;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.SessionState;

namespace DotNet_Website_Project.Controllers
{
    public class AuthorizationUserAttribute : AuthorizeAttribute
    {

        private int _currentRoleId;
        private int _requestRoleId;

        public AuthorizationUserAttribute()
        {
            _requestRoleId = 4;
        }


        public int RoleId
        {
            get { return _requestRoleId; }
            set
            {
                _requestRoleId = value;
            }
        }


        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            var idRole = HttpContext.Current.Session["userRole"];

            if (idRole == null)
            {
                _currentRoleId = 4;

            }
            try
            {
                if (idRole != null)
                    _currentRoleId = int.Parse(idRole.ToString());

            }
            catch (NotFiniteNumberException e)
            {
                return false;
            }

            if (_currentRoleId != _requestRoleId)
                return false;


            return true;
        }

        public override void OnAuthorization(AuthorizationContext filterContext)
        {

            if (filterContext == null)
            {
                throw new NotImplementedException();
            }

            if (_requestRoleId == 0)
            {
                _requestRoleId = 4;
            }
            


            if (!AuthorizeCore(filterContext.HttpContext))
            {
                HandleUnauthorizedRequest(filterContext);
            }
            Debug.WriteLine("c " + _currentRoleId);
            Debug.WriteLine("r " + _requestRoleId);
        }



        //execute when fail
        protected override void HandleUnauthorizedRequest(AuthorizationContext filterContext)
        {


            if (!filterContext.HttpContext.Request.IsAuthenticated)
            {

                if (isInLoginPage(filterContext))
                {
                    if (_currentRoleId != 4)
                    {
                        if (_currentRoleId == 1)
                        {
                            var Url = new UrlHelper(filterContext.RequestContext);
                            var url = Url.Action("Index", "BackEndUser");
                            filterContext.Result = new RedirectResult(url);

                        }
                        else
                        {
                            var Url = new UrlHelper(filterContext.RequestContext);
                            var url = Url.Action("TrangChu", "FrontEnd");
                            filterContext.Result = new RedirectResult(url);

                        }

                        return;
                    }
                }

                if (_currentRoleId == 1)
                {
                    var Url = new UrlHelper(filterContext.RequestContext);
                    var url = Url.Action("Index", "BackEndUser");
                    filterContext.Result = new RedirectResult(url);

                    return;

                }

                if (_currentRoleId != 1 && _requestRoleId == 1)
                {
                    var Url = new UrlHelper(filterContext.RequestContext);
                    var url = Url.Action("TrangChu", "FrontEnd");
                    filterContext.Result = new RedirectResult(url);
                }



                if (_currentRoleId == 3 && _requestRoleId == 2)
                {
                    var Url = new UrlHelper(filterContext.RequestContext);
                    var url = Url.Action("TrangChu", "FrontEnd");
                    filterContext.Result = new RedirectResult(url);
                    //add some code here
                }

                if (_currentRoleId == 2 && _requestRoleId == 3)
                {
                    var Url = new UrlHelper(filterContext.RequestContext);
                    var url = Url.Action("TrangChu", "FrontEnd");
                    filterContext.Result = new RedirectResult(url);
                    //add some code here
                }
                return;
            }
        }





        private bool isInLoginPage(AuthorizationContext authorizationContext)
        {
            string currentActionName = authorizationContext.ActionDescriptor.ActionName;
            string currentControllerName = authorizationContext.ActionDescriptor.ControllerDescriptor.ControllerName;

            Debug.WriteLine(currentActionName);
            Debug.WriteLine(currentControllerName);
            return (currentActionName.Equals("DangNhap") || currentActionName.Equals("XacThucDangNhap")) && currentControllerName.Equals("FrontEnd");
        }
    }
}