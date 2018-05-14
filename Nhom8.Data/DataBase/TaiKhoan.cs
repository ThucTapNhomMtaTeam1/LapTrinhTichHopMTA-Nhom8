namespace Nhom8.Data.DataBase
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("TaiKhoan")]
    public partial class TaiKhoan
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public TaiKhoan()
        {
            PhanCongs = new HashSet<PhanCong>();
        }

        [Key]
        [StringLength(50)]
        public string TenTaiKhoan { get; set; }

        [StringLength(100)]
        public string MatKhau { get; set; }

        public int? MaNguoiDung { get; set; }

        public DateTime? NgayTao { get; set; }

        public DateTime? NgayCapNhap { get; set; }

        public bool? HienThi { get; set; }

        [StringLength(50)]
        public string TenNguoiDung { get; set; }

        public DateTime? NgaySinh { get; set; }

        [StringLength(50)]
        public string GioiTinh { get; set; }

        public string DiaChi { get; set; }

        [StringLength(50)]
        public string DienThoai { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PhanCong> PhanCongs { get; set; }
    }
}
