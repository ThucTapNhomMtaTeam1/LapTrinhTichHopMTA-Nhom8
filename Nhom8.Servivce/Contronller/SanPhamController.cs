using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Nhom8.Servivce.Contronller
{
    public class SanPhamController : ApiController
    {
        DataBaseMayTinhDataContext DataBaseMayTinhDataContext = new DataBaseMayTinhDataContext();


        [HttpGet]
        public List<SanPham> LayRaDanhSachSanPham()
        {

            List<SanPham> DanhSachSanPham = DataBaseMayTinhDataContext.SanPhams.ToList();
            foreach(SanPham sanPham in DanhSachSanPham)
            {
                sanPham.LoaiSanPham = null;
                sanPham.NhaCungCap = null;
                sanPham.NhaSanXuat = null;
                sanPham.CT_PhieuXuats.Clear();
                sanPham.ThongSoKyThuats.Clear();
            }
            return DanhSachSanPham;
        }


        [HttpGet]
        public SanPham LayThongTinSanPham(int MaSanPham)
        {

            SanPham sanPham = DataBaseMayTinhDataContext.SanPhams
                .FirstOrDefault(x => x.MaSanPham == MaSanPham);
            if(sanPham != null)
            {
                sanPham.LoaiSanPham = null;
                sanPham.NhaCungCap = null;
                sanPham.NhaSanXuat = null;
                sanPham.CT_PhieuXuats.Clear();
                sanPham.ThongSoKyThuats.Clear();
            }
                
            return sanPham;
        }


        [HttpGet]
        public List<SanPham> LayRaDanhSachSanPhamTheoLoai(int maLoaiSanPham)
        {

            List<SanPham> DanhSachSanPham = DataBaseMayTinhDataContext.SanPhams
                .Where(x => x.MaLoaiSanPham == maLoaiSanPham).ToList();
            foreach (SanPham sanPham in DanhSachSanPham)
            {
                sanPham.LoaiSanPham = null;
                sanPham.NhaCungCap = null;
                sanPham.NhaSanXuat = null;
                sanPham.CT_PhieuXuats.Clear();
                sanPham.ThongSoKyThuats.Clear();
            }
            return DanhSachSanPham;
        }


        [HttpGet]
        public List<SanPham> LayRaDanhSachSanPhamTheoNCC(int MaNhaCungCap)
        {

            List<SanPham> DanhSachSanPham = DataBaseMayTinhDataContext.SanPhams
                .Where(x => x.MaNhaCungCap == MaNhaCungCap).ToList();
            foreach (SanPham sanPham in DanhSachSanPham)
            {
                sanPham.LoaiSanPham = null;
                sanPham.NhaCungCap = null;
                sanPham.NhaSanXuat = null;
                sanPham.CT_PhieuXuats.Clear();
                sanPham.ThongSoKyThuats.Clear();
            }
            return DanhSachSanPham;
        }


        [HttpGet]
        public List<SanPham> LayRaDanhSachSanPhamTheoNSX(int MaNhaSanXuat)
        {

            List<SanPham> DanhSachSanPham = DataBaseMayTinhDataContext.SanPhams
                .Where(x => x.MaNhaSanXuat == MaNhaSanXuat).ToList();
            foreach (SanPham sanPham in DanhSachSanPham)
            {
                sanPham.LoaiSanPham = null;
                sanPham.NhaCungCap = null;
                sanPham.NhaSanXuat = null;
                sanPham.CT_PhieuXuats.Clear();
                sanPham.ThongSoKyThuats.Clear();
            }
            return DanhSachSanPham;
        }


        [HttpGet]
        public List<SanPham> LayRaDanhSachSanPhamTheoSoLuong(int GiaTriDau , int GiaTriCuoi )
        {

            List<SanPham> DanhSachSanPham = DataBaseMayTinhDataContext.SanPhams
                .Where(x=>x.SoLuongTon >= GiaTriDau && x.SoLuongTon<= GiaTriCuoi)
                .ToList();
            foreach (SanPham sanPham in DanhSachSanPham)
            {
                sanPham.LoaiSanPham = null;
                sanPham.NhaCungCap = null;
                sanPham.NhaSanXuat = null;
                sanPham.CT_PhieuXuats.Clear();
                sanPham.ThongSoKyThuats.Clear();
            }
            return DanhSachSanPham;
        }


        [HttpGet]
        public List<SanPham> LayRaDanhSachSanPhamTheo(decimal DonGiaDau , decimal DonGiaCuoi)
        {

            List<SanPham> DanhSachSanPham = DataBaseMayTinhDataContext.SanPhams
                .Where(x => x.DonGia >= DonGiaDau && x.DonGia <= DonGiaCuoi)
                .ToList();
            foreach (SanPham sanPham in DanhSachSanPham)
            {
                sanPham.LoaiSanPham = null;
                sanPham.NhaCungCap = null;
                sanPham.NhaSanXuat = null;
                sanPham.CT_PhieuXuats.Clear();
                sanPham.ThongSoKyThuats.Clear();
            }
            return DanhSachSanPham;
        }

        [HttpPost]
        public bool LuuSanPham
            (
                int MaSanPham , string TenSanPham, int SoLuong ,
                decimal DonGia,string MoTa,string AnhBia, int MaNhaCungCap ,
                int MaNhaSanXuat , int MaLoaiSanPham, bool HienThi
            )
        {
            try
            {
                SanPham sanPham = new SanPham()
                {
                    MaSanPham = MaSanPham,
                    TenSanPham = TenSanPham,
                    SoLuongTon = SoLuong,
                    DonGia = DonGia,
                    AnhBia = AnhBia,
                    MaLoaiSanPham = MaLoaiSanPham,
                    MaNhaCungCap = MaNhaCungCap,
                    MaNhaSanXuat = MaNhaSanXuat,
                    HienThi = HienThi
                };
                DataBaseMayTinhDataContext.SanPhams.InsertOnSubmit(sanPham);
                DataBaseMayTinhDataContext.SubmitChanges();
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
            
        }

        [HttpPost]
        public bool LuuThongTinSanPham(SanPham sanPham)

        {
            try
            {
                DataBaseMayTinhDataContext.SanPhams.InsertOnSubmit(sanPham);
                DataBaseMayTinhDataContext.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            
        }

        [HttpPost]
        public bool LuuDanhSachSanPham(List<SanPham>DanhSach)

        {
            try
            {
                DataBaseMayTinhDataContext.SanPhams.InsertAllOnSubmit(DanhSach);
                DataBaseMayTinhDataContext.SubmitChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        [HttpPut]
        public bool SuaThongTinSanPham(int MaSanPham, string TenSanPham, int SoLuong, decimal DonGia)
        {
            try
            {
                SanPham sanPham = DataBaseMayTinhDataContext.SanPhams
                    .FirstOrDefault(x => x.MaSanPham == MaSanPham); 
                if(sanPham != null)
                {
                    sanPham.TenSanPham = TenSanPham;
                    sanPham.SoLuongTon = SoLuong;
                    sanPham.DonGia = DonGia;
                    DataBaseMayTinhDataContext.SubmitChanges();
                }
                
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
        [HttpDelete]

        public bool XoaSanPhamTheoMa(int MaSanPham)
        {
            try
            {
                SanPham sanPham = DataBaseMayTinhDataContext.SanPhams
                    .FirstOrDefault(x => x.MaSanPham == MaSanPham);
                if (sanPham != null)
                {
                    DataBaseMayTinhDataContext.SanPhams.DeleteOnSubmit(sanPham); 
                    DataBaseMayTinhDataContext.SubmitChanges();
                }
                
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
}
    }
}
