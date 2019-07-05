using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DotNet_Website_Project.Models;
using PagedList;

namespace DotNet_Website_Project.Controllers
{
    public class ApplierController : Controller
    {
        private PartTimeJobEntitiesEntities db = new PartTimeJobEntitiesEntities();

        // GET: Applier
        public ActionResult JobList(int? page)
        {
            var jobRecument = db.JOB_RECUMENT;
            int pageSize = 4;
            return View(jobRecument.ToList().ToPagedList(page ?? 1, pageSize));
        }
        public ActionResult JobRecumentDetail(int? id)
        {
            if (id == null)
            {
                return RedirectToAction("TrangChu", "FrontEnd");
            }
            int userID = Convert.ToInt32(HttpContext.Session["userID"]);
          
            JOB_RECUMENT_PROCESSING getRecumentProcess = (from jobRecumentProcess in db.JOB_RECUMENT_PROCESSING where (jobRecumentProcess.RECUMENT_ID == id)&&(jobRecumentProcess.EMPLOYEE_ID==userID) select jobRecumentProcess).SingleOrDefault();
            if (getRecumentProcess != null)
            {
                ViewBag.ApprovalStatus = getRecumentProcess.APPROVAL_STATUS.Value;
            }
            JOB_RECUMENT getRecument = (from jobRecument in db.JOB_RECUMENT where jobRecument.RECUMENT_ID==id select jobRecument).SingleOrDefault();
            return View(getRecument);
        }
        public ActionResult ApplyJob(String userID,String recumentID)
        {
            using (var DBTransactions = db.Database.BeginTransaction())
            {
                try
                {
                    JOB_RECUMENT_PROCESSING newProcessing = new JOB_RECUMENT_PROCESSING();
                    newProcessing.RECUMENT_ID = Convert.ToInt32(recumentID);
                    newProcessing.EMPLOYEE_ID = Convert.ToInt32(userID);
                    DateTime dateTime = DateTime.UtcNow.Date;
                    newProcessing.APPLYING_DATE = dateTime.ToString("dd/NN/yyyy");
                    newProcessing.APPROVAL_STATUS = false;
                    newProcessing.JOB_STATUS = Convert.ToInt32(1);
                    newProcessing.WAGE_PAYMENT_STATUS = Convert.ToInt32(0);
                    // tao xong user , tien hanh tao profile
                    db.JOB_RECUMENT_PROCESSING.Add(newProcessing);
                db.SaveChanges();
                DBTransactions.Commit();
                TempData["Message"] = "Bạn đã ứng tuyển thành công !";
                return RedirectToAction("TrangChu", "FrontEnd");
                }
                catch(System.Data.Entity.Infrastructure.DbUpdateException db)
                {
                    Debug.WriteLine(db.ToString());
                    DBTransactions.Rollback();
                    TempData["Message"] = "Bạn đã ứng tuyển công việc này rồi";
                    return RedirectToAction("TrangChu", "FrontEnd");
                }
             catch (Exception e)
            {
                    Debug.WriteLine(e.ToString());
                    DBTransactions.Rollback();
                TempData["Message"] = "Có lỗi xảy ra trong hệ thống, vui lòng thử lại sau";
                return RedirectToAction("TrangChu", "FrontEnd");
            }
        }
        }
        public ActionResult DeleteApply(int? id)
        {
         
                int userID = Convert.ToInt32(HttpContext.Session["userID"]);
                if (HttpContext.Session["userID"] == null)
                {
                    TempData["Message"] = "Vui lòng đăng nhập tài khoản tìm việc";
                    return RedirectToAction("DangNhap", "FrontEnd");
                }
                else
                {
                    using (var DBTransactions = db.Database.BeginTransaction())
                    {
                        try
                        {
                            JOB_RECUMENT_PROCESSING getRecumentProcess = (from recumentProcess in db.JOB_RECUMENT_PROCESSING where (recumentProcess.EMPLOYEE_ID == userID)&&(recumentProcess.RECUMENT_ID==id) select recumentProcess).SingleOrDefault();

                            db.JOB_RECUMENT_PROCESSING.Remove(getRecumentProcess);
                            db.SaveChanges();
                            DBTransactions.Commit();
                            TempData["Message"] = "Đã xoa đơn ưng tuyển ";
                            return RedirectToAction("TrangChu", "FrontEnd");
                        }
                        catch (Exception e)
                        {
                            Debug.WriteLine(e.ToString());
                            DBTransactions.Rollback();
                            TempData["Message"] = "Có lỗi xảy ra trong hệ thống, vui lòng thử lại sau";
                            return RedirectToAction("TrangChu", "FrontEnd");
                        }
                    }

                }
            
         
      

        }
        public ActionResult Manage(int? page)
        {
            int userID = Convert.ToInt32(HttpContext.Session["userID"]);
            if (HttpContext.Session["userID"]==null)
            {
                TempData["Message"] = "Vui lòng đăng nhập tài khoản tìm việc";
                return RedirectToAction("DangNhap", "FrontEnd");
            }
            else
            {
                List<JOB_RECUMENT_PROCESSING> jobRecumentProcessList = (from recumentProcess in db.JOB_RECUMENT_PROCESSING where recumentProcess.EMPLOYEE_ID==userID select recumentProcess).ToList();
                int pageSize = 4;
                if (jobRecumentProcessList == null)
                {
                    TempData["Message"] = "Bạn chưa sở hữu công việc nào cả !";
                    return RedirectToAction("DangNhap", "FrontEnd");
                }
                else
                {
                    return View(jobRecumentProcessList.ToPagedList(page ?? 1, pageSize));
                }
            }
        }

        // GET: Applier/Create
       

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
