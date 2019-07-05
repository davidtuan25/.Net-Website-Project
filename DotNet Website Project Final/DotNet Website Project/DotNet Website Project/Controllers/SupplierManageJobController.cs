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
    public class SupplierManageJobController : Controller
    {
        private PartTimeJobEntitiesEntities db = new PartTimeJobEntitiesEntities();

        // GET: SupplierManageJob
        public ActionResult Index()
        {
            int number = Convert.ToInt32(Session["userID"].ToString());
            var jOB_RECUMENT = db.JOB_RECUMENT.Include(j => j.JOB).Include(j => j.PROFILE).Where(j=> j.EMPLOYER_ID == number);
            return View(jOB_RECUMENT.ToList());
        }

        // GET: SupplierManageJob/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JOB_RECUMENT jOB_RECUMENT = db.JOB_RECUMENT.Find(id);
            if (jOB_RECUMENT == null)
            {
                return HttpNotFound();
            }
            return View(jOB_RECUMENT);
        }

        // GET: SupplierManageJob/Create
        public ActionResult Create()
        {
            ViewBag.JOB_ID = new SelectList(db.JOBs, "JOB_ID", "JOB_CODE");
            ViewBag.EMPLOYER_ID = new SelectList(db.PROFILEs, "PROFILE_ID", "FIRST_NAME");
            return View();
        }

        // POST: SupplierManageJob/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "RECUMENT_ID,EMPLOYER_ID,EMPLOYEE_AMOUNT,JOB_ID,START_DATE,WORK_MONTH_AMOUNT,CREATED_DATE,APPROVAL_DEADLINE,REFERRAL_WAGE_COST,RECUMENT_STATUS")] JOB_RECUMENT jOB_RECUMENT)
        {
            if (ModelState.IsValid)
            {
                db.JOB_RECUMENT.Add(jOB_RECUMENT);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.JOB_ID = new SelectList(db.JOBs, "JOB_ID", "JOB_CODE", jOB_RECUMENT.JOB_ID);
            ViewBag.EMPLOYER_ID = new SelectList(db.PROFILEs, "PROFILE_ID", "FIRST_NAME", jOB_RECUMENT.EMPLOYER_ID);
            return View(jOB_RECUMENT);
        }

        // GET: SupplierManageJob/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JOB_RECUMENT jOB_RECUMENT = db.JOB_RECUMENT.Find(id);
            if (jOB_RECUMENT == null)
            {
                return HttpNotFound();
            }
            ViewBag.JOB_ID = new SelectList(db.JOBs, "JOB_ID", "JOB_CODE", jOB_RECUMENT.JOB_ID);
            ViewBag.EMPLOYER_ID = new SelectList(db.PROFILEs, "PROFILE_ID", "FIRST_NAME", jOB_RECUMENT.EMPLOYER_ID);
            return View(jOB_RECUMENT);
        }

        // POST: SupplierManageJob/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "RECUMENT_ID,EMPLOYER_ID,EMPLOYEE_AMOUNT,JOB_ID,START_DATE,WORK_MONTH_AMOUNT,CREATED_DATE,APPROVAL_DEADLINE,REFERRAL_WAGE_COST,RECUMENT_STATUS")] JOB_RECUMENT jOB_RECUMENT)
        {
            if (ModelState.IsValid)
            {
                db.Entry(jOB_RECUMENT).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.JOB_ID = new SelectList(db.JOBs, "JOB_ID", "JOB_CODE", jOB_RECUMENT.JOB_ID);
            ViewBag.EMPLOYER_ID = new SelectList(db.PROFILEs, "PROFILE_ID", "FIRST_NAME", jOB_RECUMENT.EMPLOYER_ID);
            return View(jOB_RECUMENT);
        }

        // GET: SupplierManageJob/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            JOB_RECUMENT jOB_RECUMENT = db.JOB_RECUMENT.Find(id);
            if (jOB_RECUMENT == null)
            {
                return HttpNotFound();
            }
            return View(jOB_RECUMENT);
        }

        // POST: SupplierManageJob/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            JOB_RECUMENT jOB_RECUMENT = db.JOB_RECUMENT.Find(id);
            db.JOB_RECUMENT.Remove(jOB_RECUMENT);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult Accept(JOB_RECUMENT_PROCESSING item)
        {
            JOB_RECUMENT_PROCESSING jOB_RECUMENT_PROCCESSING = item;
            jOB_RECUMENT_PROCCESSING.APPROVAL_STATUS = true;
            db.Entry(jOB_RECUMENT_PROCCESSING).State = EntityState.Modified;
            db.SaveChanges();
            return View("Details", db.JOB_RECUMENT.Find(item.RECUMENT_ID));
        }

        public ActionResult Decline(JOB_RECUMENT_PROCESSING item)
        {
            JOB_RECUMENT_PROCESSING jOB_RECUMENT_PROCCESSING = item;
            jOB_RECUMENT_PROCCESSING.APPROVAL_STATUS = false;
            db.Entry(jOB_RECUMENT_PROCCESSING).State = EntityState.Modified;
            db.SaveChanges();
            return View("Details", db.JOB_RECUMENT.Find(item.RECUMENT_ID));
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
