using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DotNet_Website_Project.Controllers
{
    using Facebook;
    using Models;
    using System.Diagnostics;
    using System.Web.Routing;
    using System.Web.Security;
    using System.Web.UI;

    public class FrontEndController : Controller
    {
        // GET: FrontEnd
        public ActionResult TrangChu()
        {
            return View();
        }
        public ActionResult DangKy()
        {
            ViewBag.PreviousPage = "Trang Chủ";
            ViewBag.PreviousAction = "TrangChu";
            ViewBag.PreviousController = "FrontEnd";
            using (var DBEntities = new PartTimeJobEntitiesEntities())
            {
                List<ROLE> roleList = (from role in DBEntities.ROLEs
                                   where role.ROLE_ID == 2 || role.ROLE_ID == 3
                                   select role).ToList();
            SelectList resultList = new SelectList(roleList, "ROLE_ID", "ROLE_NAME");
            ViewBag.RoleList = resultList;
            return View();
            }
        }
        public ActionResult XacThucDangKy(USER model)
        {
            {
                if (!ModelState.IsValid)
                {
                    ViewBag.PreviousPage = "Trang Chủ";
                    ViewBag.PreviousAction = "TrangChu";
                    ViewBag.PreviousController = "FrontEnd";
                    using (var DBEntities = new PartTimeJobEntitiesEntities())
                    {
                        List<ROLE> roleList = (from role in DBEntities.ROLEs
                                               where role.ROLE_ID == 2 || role.ROLE_ID == 3
                                               select role).ToList();
                        SelectList resultList = new SelectList(roleList, "ROLE_ID", "ROLE_NAME");
                        ViewBag.RoleList = resultList;
                        return View("DangKy",model);
                    }
                }
                else {
                    using (var DBEntities = new PartTimeJobEntitiesEntities())
                    {
                        using (var DBTransactions = DBEntities.Database.BeginTransaction())
                        {
                            USER getUser = (from user in DBEntities.USERs
                                            where user.USERNAME == model.USERNAME
                                            select user).FirstOrDefault<USER>();
                            if (getUser != null)
                            {
                                ViewBag.PreviousPage = "Trang Chủ";
                                ViewBag.PreviousAction = "TrangChu";
                                ViewBag.PreviousController = "FrontEnd";
                                List<ROLE> roleList = (from role in DBEntities.ROLEs
                                                       where role.ROLE_ID == 2 || role.ROLE_ID == 3
                                                       select role).ToList();
                                SelectList resultList = new SelectList(roleList, "ROLE_ID", "ROLE_NAME");
                                ViewBag.RoleList = resultList;
                                ViewBag.UsernameError = "Tài khoản này đã có người sử dụng";
                                return View("DangKy", model);
                            }
                            else
                            {
                                try
                                {
                                        USER newUser = model;
                                        var generateID = (from user in DBEntities.USERs
                                                          orderby user.USER_ID descending
                                                          select user.USER_ID).Take(1).SingleOrDefault();
                         
                                        newUser.FACEBOOK_ID = Convert.ToString(generateID+1);
                                        newUser.GMAIL_ID = Convert.ToString(generateID + 1);
                                        newUser.USER_STATUS = (byte) 1;
                                        DateTime dateTime = DateTime.UtcNow.Date;
                                        newUser.JOINED_DATE = dateTime.ToString("MM/dd/yyyy");
                                        DBEntities.USERs.Add(newUser);
    
                                        // tao xong user , tien hanh tao profile
                                            PROFILE newProfile = new PROFILE();
                                            DBEntities.PROFILEs.Add(newProfile);
                                            DBEntities.SaveChanges();
                                            DBTransactions.Commit();
                                        TempData["Message"] = "Chúc mừng tài khoản " + newUser.USERNAME + " đã đăng ký thành công !";
                                        return RedirectToAction("TrangChu", "FrontEnd");
                                
                                }catch(Exception)
                                {
                                    DBTransactions.Rollback();
                                    DBEntities.Database.ExecuteSqlCommand("USE PartTimeJob;DECLARE @lastIdent int;SET @lastIdent = (SELECT TOP 1 USER_ID FROM[USER] ORDER BY USER_ID DESC);IF @lastIdent IS NULL BEGIN SET @lastIdent=1;END;DBCC CHECKIDENT('dbo.USER',RESEED,@lastIdent);");
                                    DBEntities.Database.ExecuteSqlCommand("USE PartTimeJob;DECLARE @lastIdent int;SET @lastIdent = (SELECT TOP 1 PROFILE_ID FROM[PROFILE] ORDER BY PROFILE_ID DESC);IF @lastIdent IS NULL BEGIN SET @lastIdent=1;END;DBCC CHECKIDENT('dbo.PROFILE',RESEED,@lastIdent);");
                                    TempData["Message"] = "Có lỗi xảy ra trong hệ thống, vui lòng thử lại sau";
                                    return RedirectToAction("TrangChu", "FrontEnd");
                                }
                            }   
                        }

                    
                    }
                  
                }
            }
                 
        }

        public ActionResult DangNhapFacebook(USER model)
        {
            //Truy cap FB link : https://www.facebook.com/dialog/oauth?client_id=448189112424038&redirect_uri=https://localhost:44339/FrontEnd/DangNhapFacebook/
            // Garph API generate : https://graph.facebook.com/oauth/access_token?client_id=448189112424038&redirect_uri=https://localhost:44339/&client_secret=82b758dfa05ac986d990848ae81bab69&code=
            var oauthResult = Request.Params["code"];
            int roleID = int.Parse(Request.Params["roleID"]);
            var fb = new FacebookClient();
            Dictionary<string, object> parameters = new Dictionary<string, object>();
            parameters.Add("client_id", "448189112424038");
            parameters.Add("client_secret", "82b758dfa05ac986d990848ae81bab69");
            parameters.Add("code", oauthResult);
            if (roleID == 2)
            {
                parameters.Add("redirect_uri", "https://localhost:44339/FrontEnd/DangNhapFacebook?roleID=2");
            }
            else if(roleID==3)
            {
                parameters.Add("redirect_uri", "https://localhost:44339/FrontEnd/DangNhapFacebook?roleID=3");
            }
            else
            {
                parameters.Add("redirect_uri", "https://localhost:44339/FrontEnd/DangNhapFacebook");
            }
            dynamic result = fb.Get("/oauth/access_token", parameters);
            string accessToken = result["access_token"];
            fb.AccessToken = accessToken;

            if (string.IsNullOrEmpty(accessToken))
            {
                TempData["Message"] = "Có lỗi khi đăng nhập bằng Facebook !";
                return RedirectToAction("TrangChu", "FrontEnd");
            }
            else
            {
                // lay thong tin tai khoan FB
                Dictionary<string, string> fbInfo = new Dictionary<string, string>();
                dynamic me = fb.Get("me?fields=id,name,age_range,birthday,first_name,last_name,hometown,gender,location,email");
                fbInfo.Add("fbID",me.id);
                fbInfo.Add("fbEmail",me.email);
                fbInfo.Add("fbName",me.name);
                fbInfo.Add("fbAge",Convert.ToString(me.age_range["min"]));
                fbInfo.Add("fbBirthday",Convert.ToString(me.birthday));
                fbInfo.Add("fbFirstName",me.first_name);
                fbInfo.Add("fbLastName", me.last_name);
                fbInfo.Add("fbHometown", me.hometown);
                fbInfo.Add("fbGender", me.gender);
                fbInfo.Add("fbLocation", Convert.ToString(me.location["name"]));
                fbInfo.Add("roleID",roleID.ToString());
                int getUserID = 0;
               // USER getUser = null;

                // xac nhap vao DB
                if (kiemTraFacebookID(fbInfo["fbID"])==true)
                {
                     getUserID = layUserIdTuFacebookID(fbInfo["fbID"]);
                     //getUser = layUserTuUserID(getUserID);
                }
                else
                {
                   bool regStatus = dangKyUserFacebook(fbInfo["fbID"],fbInfo);
                    if (regStatus == false)
                    {
                        TempData["Message"] = "Có lỗi khi đăng ký tài khoản mới đăng nhập bằng Facebook !";
                        return RedirectToAction("TrangChu", "FrontEnd");
                    }
                    else
                    {
                        getUserID = layUserIdTuFacebookID(fbInfo["fbID"]);
                        //getUser = layUserTuUserID(getUserID);
                    }
                }
                Session["userID"] = getUserID;
                Session["userName"] = layProfileTuUserID(getUserID).LAST_NAME;
                return RedirectToAction("TrangChu", "FrontEnd");
            }

        }

        public PROFILE layProfileTuUserID(int userID)
        {
            using (var DBEntities = new PartTimeJobEntitiesEntities())
            {
                PROFILE getProfile = (from profile in DBEntities.PROFILEs
                                      where profile.PROFILE_ID == userID
                                      select profile).FirstOrDefault<PROFILE>();
                return getProfile;
            }
        }

        public USER layUserTuUserID(int userID)
        {
            using (var DBEntities = new PartTimeJobEntitiesEntities())
            {
                USER getUser = (from user in DBEntities.USERs
                             where user.USER_ID == userID
                              select user).FirstOrDefault<USER>();
                return getUser;
            }
        }
        public int layUserIdTuFacebookID(string facebookID)
        {
            using (var DBEntities = new PartTimeJobEntitiesEntities())
            {
                int getID = (from user in DBEntities.USERs
                                        where user.FACEBOOK_ID== facebookID
                                select user.USER_ID).FirstOrDefault<int>();
                return getID;
            }
        }

        public bool kiemTraFacebookID(string facebookID)
        {
            using (var DBEntities = new PartTimeJobEntitiesEntities())
            {
                    string getFacebookID = (from user in DBEntities.USERs
                                            where user.FACEBOOK_ID == facebookID
                                            select user.FACEBOOK_ID).FirstOrDefault<string>();
                    if (getFacebookID != null)
                    {
                        return true;
                    }
                    else
                    {
                        return false;
                    }
                }
        }
        
        public bool dangKyUserFacebook(string facebookID, Dictionary<string, string> fbInfo)
        {
            using (var DBEntities = new PartTimeJobEntitiesEntities())
            {
                using (var DBTransactions = DBEntities.Database.BeginTransaction())
                {
                        try
                        {
                        USER newUser = new USER();
                        var generateID = (from user in DBEntities.USERs
                                              orderby user.USER_ID descending
                                              select user.USER_ID).Take(1).SingleOrDefault();

                        newUser.FACEBOOK_ID = facebookID;
                        newUser.USERNAME = facebookID + (generateID + 1);
                        newUser.PASSWORD = facebookID + "2019group21dotnetNLUHashing";
                        newUser.PASSWORDAGAIN = facebookID + "2019group21dotnetNLUHashing";
                        DateTime dateTime = DateTime.UtcNow.Date;
                        newUser.JOINED_DATE = dateTime.ToString("MM/dd/yyyy");
                        newUser.GMAIL_ID = Convert.ToString(generateID + 1);
                        newUser.USER_STATUS = (byte)1;
                        newUser.ROLE_ID = byte.Parse(fbInfo["roleID"]);
                        DBEntities.USERs.Add(newUser);

                        // tao xong user , tien hanh tao profile
                        PROFILE newProfile = new PROFILE();
                        newProfile.FIRST_NAME = fbInfo["fbFirstName"];
                        newProfile.LAST_NAME = fbInfo["fbLastName"];
                        newProfile.ADDRESS = fbInfo["fbHometown"];
                        newProfile.BIRTHDAY = fbInfo["fbBirthday"];
                        newProfile.EMAIL = fbInfo["fbEmail"];
                        newProfile.SEX = fbInfo["fbGender"];
                        DBEntities.PROFILEs.Add(newProfile);
                        DBEntities.SaveChanges();
                        DBTransactions.Commit();
                        return true;
                    }
                        catch (Exception)
                        {
                            DBTransactions.Rollback();
                            DBEntities.Database.ExecuteSqlCommand("USE PartTimeJob;DECLARE @lastIdent int;SET @lastIdent = (SELECT TOP 1 USER_ID FROM[USER] ORDER BY USER_ID DESC);IF @lastIdent IS NULL BEGIN SET @lastIdent=1;END;DBCC CHECKIDENT('dbo.USER',RESEED,@lastIdent);");
                            DBEntities.Database.ExecuteSqlCommand("USE PartTimeJob;DECLARE @lastIdent int;SET @lastIdent = (SELECT TOP 1 PROFILE_ID FROM[PROFILE] ORDER BY PROFILE_ID DESC);IF @lastIdent IS NULL BEGIN SET @lastIdent=1;END;DBCC CHECKIDENT('dbo.PROFILE',RESEED,@lastIdent);");
                        return false;
                    }
                    }
              
            }
        }
        public ActionResult DangNhap()
        {
            ViewBag.PreviousPage = "Trang Chủ";
            ViewBag.PreviousAction = "TrangChu";
            ViewBag.PreviousController = "FrontEnd";
            return View();
        }

        [HttpPost]
        public ActionResult XacThucDangNhap(USER model)
        {

            if (!ModelState.IsValidField("USERNAME")&&!ModelState.IsValidField("PASSWORD"))
            {
                ViewBag.PreviousPage = "Trang Chủ";
                ViewBag.PreviousAction = "TrangChu";
                ViewBag.PreviousController = "FrontEnd";
                return View("DangNhap", model);
            }
            else
            {
                using (var DBEntities = new PartTimeJobEntitiesEntities())
                {
                    USER getUser = (from user in DBEntities.USERs
                                    where user.USERNAME == model.USERNAME && user.PASSWORD == model.PASSWORD
                                    select user).FirstOrDefault<USER>();
                    if (getUser != null)
                    {
                        Session["userID"] = getUser.USER_ID;
                        Session["userName"] = getUser.USERNAME;
                        ViewBag.Error = "Tài kho không đúng !";

                        return View("TrangChu");
                    }
                    else
                    {
                        ViewBag.PreviousPage = "Trang Chủ";
                        ViewBag.PreviousAction = "TrangChu";
                        ViewBag.PreviousController = "FrontEnd";
                        ViewBag.Error = "Tài khoản hoặc mật khẩu không đúng !";
                        return View("DangNhap", model);
                    }
                }
            }
               
        }


        public ActionResult DangXuat()
        {
            Session.Abandon();
            return RedirectToAction("TrangChu", "FrontEnd");
        }
    }
}