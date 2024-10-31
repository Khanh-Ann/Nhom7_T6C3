using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebBanMyPham.Models;
using WebBanMyPham.Controllers;
using PagedList;
using System.Web.UI;

namespace WebBanMyPham.Controllers
{
    public class SanPhamController : Controller
    {
        private readonly DBQLMYPHAMEntities db = new DBQLMYPHAMEntities(); // Giả sử bạn có DbContext
        private int? page;

        // GET: SanPham
        public ActionResult Index()
        {
            int pageSize = 12; // số sản phẩm trên mỗi trang
            int pageNumber = (page ?? 1); // nếu page null thì lấy là trang 1

            var SanPhams = db.SanPhams.ToList();
            // Chuyển List thành IPagedList
            return View(SanPhams.ToPagedList(pageNumber, pageSize));
        }
        public ActionResult Details(int id)
        {
            var SanPham = db.SanPhams.Find(id);
            if (SanPham == null)
            {
                return HttpNotFound();
            }
            return View(SanPham);
        }
        public ActionResult ChiTietTD()
        {
            return View();
        }

        public ActionResult ChiTietSON()
        {
            return View();
        }

        public ActionResult ChiTietNUOCHOA()
        {
            return View();
        }

        public ActionResult DanhSachTD()
        {
            return View();
        }

        public ActionResult DanhSachSON()
        {
            return View();
        }

        public ActionResult DanhSachNUOCHOA()
        {
            return View();
        }
    }
}