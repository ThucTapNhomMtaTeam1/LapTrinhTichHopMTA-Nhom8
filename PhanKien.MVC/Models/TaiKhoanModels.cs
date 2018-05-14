using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Nhom8.Data.DataBase; 
namespace PhanKien.MVC.Models
{
    public class TaiKhoanModels
    {
        MayTinhDbContext MayTinhDbContext = null; 
        public TaiKhoanModels()
        {
            MayTinhDbContext = new MayTinhDbContext(); 
        }

        public int ThemMoiMotTaiKhoan(TaiKhoan taiKhoan)
        {
            MayTinhDbContext.TaiKhoans.Add(taiKhoan);
            MayTinhDbContext.SaveChanges();
            return 1;
        }
    }
}