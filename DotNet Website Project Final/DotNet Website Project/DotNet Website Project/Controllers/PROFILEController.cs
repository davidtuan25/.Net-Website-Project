using System;

using System.Data.Entity.Validation;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DotNet_Website_Project.Models;
using PagedList;

namespace DotNet_Website_Project.Controllers
{
    [AuthorizationUser(RoleId = 1)]
    public class PROFILEController : Controller
    {
        private PartTimeJobEntitiesEntities db = new PartTimeJobEntitiesEntities();

        // GET: PROFILE


        public ActionResult Index(int? page)
        {
            var pROFILEs = db.PROFILEs.Include(p => p.TOWN);

            int pageSize = 10;


            return View(pROFILEs.ToList().ToPagedList(page ?? 1, pageSize));
        }


        // GET: PROFILE/Details/5
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

        // GET: PROFILE/Create
        public ActionResult Create()
        {
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME");
            return View();
        }

        // POST: PROFILE/Create
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

        // GET: PROFILE/Edit/5
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

        // POST: PROFILE/Edit/5
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

        // GET: PROFILE/Delete/5
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

        // POST: PROFILE/Delete/5
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
