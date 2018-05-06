using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Nhom8.Servivce.Contronller
{
    public class NhanVienController : ApiController
    {
        DataBaseMayTinhDataContext DataBaseMayTinhDataContext = new DataBaseMayTinhDataContext(); 
        [HttpGet]
        public List<NhanVien> LayRaDanhSachNhanVien()
        {

            List<NhanVien> DanhSachNhanVien = DataBaseMayTinhDataContext.NhanViens.ToList();
            return DanhSachNhanVien;
        }
    }
}
