using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DotNet_Website_Project.Models;
using PagedList;
using PagedList.Mvc;

namespace DotNet_Website_Project.Controllers
{
    public class BackEndUserController : Controller
    {
        private PartTimeJobEntitiesEntities db = new PartTimeJobEntitiesEntities();

        // GET: BackEndUser
        public ActionResult Index(int? page)
        {
            var uSERs = db.USERs.Include(u => u.ROLE);

            int pageSize = 2;
         
 
            return View(uSERs.ToList().ToPagedList(page ?? 1, pageSize));
        }


        // GET: BackEndUser/Create
        public ActionResult Create()
        {
            ViewBag.ROLE_ID = new SelectList(db.ROLEs, "ROLE_ID", "ROLE_NAME");
            return View();
        }

        // POST: BackEndUser/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "USERNAME,PASSWORD,ROLE_ID,FACEBOOK_ID,GMAIL_ID,RESET_TOKEN")] USER uSER)
        {

            uSER.USER_STATUS = 1;

            DateTime dateTime = DateTime.UtcNow.Date;
            uSER.JOINED_DATE = dateTime.ToString("MM/dd/yyyy");
            uSER.PASSWORDAGAIN = uSER.PASSWORD;

            
            var generateID = (from user in db.USERs
                              orderby user.USER_ID descending
                              select user.USER_ID).Take(1).SingleOrDefault();
            if(uSER.FACEBOOK_ID ==null)
            uSER.FACEBOOK_ID = Convert.ToString(generateID + 1);
            if (uSER.GMAIL_ID == null)
                uSER.GMAIL_ID = Convert.ToString(generateID + 1);

            PROFILE newProfile = new PROFILE();
            db.PROFILEs.Add(newProfile);
            try
            {
                db.USERs.Add(uSER);
                db.SaveChanges();
            }
            catch (DbEntityValidationException ex)
            {
                foreach (var errors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in errors.ValidationErrors)
                    {
                        // get the error message 
                        string errorMessage = validationError.ErrorMessage;
                        Debug.WriteLine(errorMessage);
                    }
                }
            }
            return RedirectToAction("Index");
        
        }

        // GET: BackEndUser/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            USER uSER = db.USERs.Find(id);
            if (uSER == null)
            {
                return HttpNotFound();
            }
            ViewBag.ROLE_ID = new SelectList(db.ROLEs, "ROLE_ID", "ROLE_NAME", uSER.ROLE_ID);
            return View(uSER);
        }

        // POST: BackEndUser/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "USER_ID,USERNAME,PASSWORD,USER_STATUS,ROLE_ID,JOINED_DATE,FACEBOOK_ID,GMAIL_ID,RESET_TOKEN")] USER uSER)
        {
            if (ModelState.IsValid)
            {
                db.Entry(uSER).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ROLE_ID = new SelectList(db.ROLEs, "ROLE_ID", "ROLE_NAME", uSER.ROLE_ID);
            return View(uSER);
        }

        // GET: BackEndUser/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("Index");
            }
            USER uSER = db.USERs.Find(id);
            if (uSER == null)
            {
                return HttpNotFound();
            }
            return View(uSER);
        }

        // POST: BackEndUser/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            USER uSER = db.USERs.Find(id);
            db.USERs.Remove(uSER);
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
