using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DotNet_Website_Project.Models;

namespace DotNet_Website_Project.Controllers
{
    public class CVController : Controller
    {
        private PartTimeJobEntitiesEntities db = new PartTimeJobEntitiesEntities();

        // GET: CV
        public ActionResult Profile()
        {
            if (HttpContext.Session["userID"] == null)
            {
                TempData["Message"] = "Vui lòng đăng nhập tài khoản ";
                return RedirectToAction("DangNhap", "FrontEnd");
            }
            else
            {
                int userID = Convert.ToInt32(HttpContext.Session["userID"]);
                PROFILE getProfile = (from profile in db.PROFILEs where profile.PROFILE_ID == userID select profile).SingleOrDefault();
                return View(getProfile);
            }
          
        }
        public ActionResult Update()
        {
            if (HttpContext.Session["userID"] == null)
            {
                TempData["Message"] = "Vui lòng đăng nhập tài khoản ";
                return RedirectToAction("DangNhap", "FrontEnd");
            }
            else
            {
                int userID = Convert.ToInt32(HttpContext.Session["userID"]);
                PROFILE getProfile = (from profile in db.PROFILEs where profile.PROFILE_ID == userID select profile).SingleOrDefault();
                return View(getProfile);
            }

        }
        public ActionResult ValidateUpdate(String first_name,String last_name,String sex,String avatar,String birthday,String email, String phone,String idcard, String address, String decsription)
        {
            if (HttpContext.Session["userID"] == null)
            {
                TempData["Message"] = "Vui lòng đăng nhập tài khoản ";
                return RedirectToAction("DangNhap", "FrontEnd");
            }
            else
            {
                int userID = Convert.ToInt32(HttpContext.Session["userID"]);
                PROFILE getProfile = db.PROFILEs.Find(userID);
                getProfile.ADDRESS = address;
                getProfile.SEX = sex;
                getProfile.IDENTITY_CARD = idcard;
                getProfile.LAST_NAME = last_name;
                getProfile.FIRST_NAME = first_name;
                getProfile.AVATAR = avatar;
                getProfile.BIRTHDAY = birthday;
                getProfile.EMAIL = email;
                getProfile.PHONE = Convert.ToInt32(phone);
                getProfile.DESCRIPTION = decsription;
                db.Entry(getProfile).State = EntityState.Modified;
                db.SaveChanges();
                TempData["Message"] = "Cập nhập thành công hồ sơ";
                return RedirectToAction("Profile", "CV");
            }

        }
        // GET: CV/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PROFILE pROFILE = db.PROFILEs.Find(id);
            if (pROFILE == null)
            {
                return HttpNotFound();
            }
            return View(pROFILE);
        }

        // GET: CV/Create
        public ActionResult Create()
        {
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME");
            return View();
        }

        // POST: CV/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "PROFILE_ID,FIRST_NAME,LAST_NAME,IDENTITY_CARD,BIRTHDAY,SEX,EMAIL,PHONE,TOWN_ID,ADDRESS,AVATAR,DESCRIPTION")] PROFILE pROFILE)
        {
            if (ModelState.IsValid)
            {
                db.PROFILEs.Add(pROFILE);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME", pROFILE.TOWN_ID);
            return View(pROFILE);
        }

        // GET: CV/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PROFILE pROFILE = db.PROFILEs.Find(id);
            if (pROFILE == null)
            {
                return HttpNotFound();
            }
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME", pROFILE.TOWN_ID);
            return View(pROFILE);
        }

        // POST: CV/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "PROFILE_ID,FIRST_NAME,LAST_NAME,IDENTITY_CARD,BIRTHDAY,SEX,EMAIL,PHONE,TOWN_ID,ADDRESS,AVATAR,DESCRIPTION")] PROFILE pROFILE)
        {
            if (ModelState.IsValid)
            {
                db.Entry(pROFILE).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME", pROFILE.TOWN_ID);
            return View(pROFILE);
        }

        // GET: CV/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            PROFILE pROFILE = db.PROFILEs.Find(id);
            if (pROFILE == null)
            {
                return HttpNotFound();
            }
            return View(pROFILE);
        }

        // POST: CV/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PROFILE pROFILE = db.PROFILEs.Find(id);
            db.PROFILEs.Remove(pROFILE);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
