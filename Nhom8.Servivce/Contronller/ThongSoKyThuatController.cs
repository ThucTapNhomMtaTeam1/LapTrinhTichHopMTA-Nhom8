using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Nhom8.Servivce.Contronller
{
    public class ThongSoKyThuatController : ApiController
    {
        [HttpGet]
        public List<ThongSoKyThuat> DanhSachThongSoKyThuat()
        {
            DataBaseMayTinhDataContext dataBaseMayTinhDataContext = new DataBaseMayTinhDataContext();
            List<ThongSoKyThuat> DanhSach = dataBaseMayTinhDataContext.ThongSoKyThuats.ToList();
            foreach(ThongSoKyThuat ThongSoKyThuat in DanhSach)
            {
                
            }
            return DanhSach; 
        }
    }
}
