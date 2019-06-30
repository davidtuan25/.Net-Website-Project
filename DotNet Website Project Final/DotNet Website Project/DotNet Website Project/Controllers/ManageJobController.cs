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
    public class ManageJobController : Controller
    {
        private PartTimeJobEntitiesEntities db = new PartTimeJobEntitiesEntities();

        // GET: ManageJob
        public ActionResult Index()
        {
            var jOBs = db.JOBs.Include(j => j.JOB_CATEGORY).Include(j => j.SHIFT_WORK_SCHEDULE).Include(j => j.TOWN);
            return View(jOBs.ToList());
        }

        // GET: ManageJob/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JOB jOB = db.JOBs.Find(id);
            if (jOB == null)
            {
                return HttpNotFound();
            }
            return View(jOB);
        }

        // GET: ManageJob/Create
        public ActionResult Create()
        {
            ViewBag.CATEGORY_ID = new SelectList(db.JOB_CATEGORY, "CATEGORY_ID", "CATEGORY_NAME");
            ViewBag.SHIFT_WORK = new SelectList(db.SHIFT_WORK_SCHEDULE, "SHIFT_ID", "SHIFT_ID");
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME");
            return View();
        }

        // POST: ManageJob/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "JOB_ID,CATEGORY_ID,JOB_CODE,JOB_NAME,MINIMUM_WAGE,MAXIMUM_WAGE,TOWN_ID,JOB_REQUIREMENT,JOB_DESCRIPTION,SHIFT_WORK")] JOB jOB)
        {
            if (ModelState.IsValid)
            {
                db.JOBs.Add(jOB);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.CATEGORY_ID = new SelectList(db.JOB_CATEGORY, "CATEGORY_ID", "CATEGORY_NAME", jOB.CATEGORY_ID);
            ViewBag.SHIFT_WORK = new SelectList(db.SHIFT_WORK_SCHEDULE, "SHIFT_ID", "SHIFT_ID", jOB.SHIFT_WORK);
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME", jOB.TOWN_ID);
            return View(jOB);
        }

        // GET: ManageJob/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JOB jOB = db.JOBs.Find(id);
            if (jOB == null)
            {
                return HttpNotFound();
            }
            ViewBag.CATEGORY_ID = new SelectList(db.JOB_CATEGORY, "CATEGORY_ID", "CATEGORY_NAME", jOB.CATEGORY_ID);
            ViewBag.SHIFT_WORK = new SelectList(db.SHIFT_WORK_SCHEDULE, "SHIFT_ID", "SHIFT_ID", jOB.SHIFT_WORK);
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME", jOB.TOWN_ID);
            return View(jOB);
        }

        // POST: ManageJob/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "JOB_ID,CATEGORY_ID,JOB_CODE,JOB_NAME,MINIMUM_WAGE,MAXIMUM_WAGE,TOWN_ID,JOB_REQUIREMENT,JOB_DESCRIPTION,SHIFT_WORK")] JOB jOB)
        {
            if (ModelState.IsValid)
            {
                db.Entry(jOB).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.CATEGORY_ID = new SelectList(db.JOB_CATEGORY, "CATEGORY_ID", "CATEGORY_NAME", jOB.CATEGORY_ID);
            ViewBag.SHIFT_WORK = new SelectList(db.SHIFT_WORK_SCHEDULE, "SHIFT_ID", "SHIFT_ID", jOB.SHIFT_WORK);
            ViewBag.TOWN_ID = new SelectList(db.TOWNs, "TOWN_ID", "TOWN_NAME", jOB.TOWN_ID);
            return View(jOB);
        }

        // GET: ManageJob/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JOB jOB = db.JOBs.Find(id);
            if (jOB == null)
            {
                return HttpNotFound();
            }
            return View(jOB);
        }

        // POST: ManageJob/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            JOB jOB = db.JOBs.Find(id);
            db.JOBs.Remove(jOB);
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
