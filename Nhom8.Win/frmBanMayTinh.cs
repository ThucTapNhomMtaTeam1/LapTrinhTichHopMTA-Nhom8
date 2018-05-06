using DevComponents.DotNetBar;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Nhom8.Win.UC; 


namespace Nhom8.Win
{
    public partial class frmBanMayTinh : DevComponents.DotNetBar.Office2007RibbonForm
    {
        public frmBanMayTinh()
        {
            InitializeComponent();
        }

        private void frmBanMayTinh_Load(object sender, EventArgs e)
        {

        }

        private void AddNewTab(string NameTab, UserControl userControl)
        {
            foreach (DevComponents.DotNetBar.TabItem tabItem in TabHeThong.Tabs)
            {
                if (tabItem.Text == NameTab)
                {
                    TabHeThong.SelectedTab = tabItem;
                    return;
                }
            }
            TabControlPanel tabControlPanel = new TabControlPanel();
        }

        private void addtab(string tabname, UserControl control)
        {
            foreach (TabItem tabPage in TabHeThong.Tabs)
            {
                if (tabPage.Text == tabname)
                {
                    TabHeThong.SelectedTab = tabPage;
                    return;
                }
            }
            TabControlPanel newtabpannel = new DevComponents.DotNetBar.TabControlPanel();
            TabItem newtab = new TabItem(this.components);
            newtabpannel.Dock = System.Windows.Forms.DockStyle.Fill;
            newtabpannel.Location = new System.Drawing.Point(0, 26);
            newtabpannel.Name = tabname;
            newtabpannel.Padding = new System.Windows.Forms.Padding(1);
            newtabpannel.Size = new System.Drawing.Size(1230, 384);
            newtabpannel.Style.BackColor1.Color = System.Drawing.Color.FromArgb(((int)(((byte)(142)))), ((int)(((byte)(179)))), ((int)(((byte)(231)))));
            newtabpannel.Style.BackColor2.Color = System.Drawing.Color.FromArgb(((int)(((byte)(223)))), ((int)(((byte)(237)))), ((int)(((byte)(254)))));
            newtabpannel.Style.Border = DevComponents.DotNetBar.eBorderType.SingleLine;
            newtabpannel.Style.BorderColor.Color = System.Drawing.Color.FromArgb(((int)(((byte)(59)))), ((int)(((byte)(97)))), ((int)(((byte)(156)))));
            newtabpannel.Style.BorderSide = ((DevComponents.DotNetBar.eBorderSide)(((DevComponents.DotNetBar.eBorderSide.Left | DevComponents.DotNetBar.eBorderSide.Right)
                                        | DevComponents.DotNetBar.eBorderSide.Bottom)));
            newtabpannel.Style.GradientAngle = 90;
            newtabpannel.TabIndex = 2;

            newtabpannel.TabItem = newtab;
            Random ran = new Random();
            newtab.Name = tabname + ran.Next(100000) + ran.Next(22342);

            newtab.AttachedControl = newtabpannel;
            newtab.Text = tabname;
            newtab.CloseButtonVisible = true;
            control.Dock = DockStyle.Fill;
            newtabpannel.Controls.Add(control);
            TabHeThong.Controls.Add(newtabpannel);
            TabHeThong.Tabs.Add(newtab);
            TabHeThong.SelectedTab = newtab;
        }
        private void btnHoaDon_Click(object sender, EventArgs e)
        {

        }

        private void btnNhaSanSuat_Click(object sender, EventArgs e)
        {
            UCNhaSanXuat UCNhaSanXuat  = new UCNhaSanXuat();
            addtab("Nhà Sản Xuất", UCNhaSanXuat); 
        }

        private void btnMatKhau_Click(object sender, EventArgs e)
        {
            UcMatKhau ucMatKhau = new UcMatKhau();
            addtab("Mật Khẩu", ucMatKhau); 
        }

        private void btnPhanQuyen_Click(object sender, EventArgs e)
        {
            UCPhanQuyen uCPhanQuyen = new UCPhanQuyen();
            addtab("Phân Quyền ", uCPhanQuyen); 
        }

        private void btnNguoiDung_Click(object sender, EventArgs e)
        {
            UCNguoiDung uCNguoiDung = new UCNguoiDung();
            addtab("Người Dùng", uCNguoiDung); 
        }

        private void btnDoiHinhNen_Click(object sender, EventArgs e)
        {
            UcDoiAnhNen ucDoiAnhNen = new UcDoiAnhNen();
            addtab("Đổi Ảnh", ucDoiAnhNen); 
        }

        private void btnNhaCungCap_Click(object sender, EventArgs e)
        {
            UCNhaCungCap uCNhaCungCap = new UCNhaCungCap();
            addtab("Nhà Cung Cấp", uCNhaCungCap); 
        }

        private void btnNhanVien_Click(object sender, EventArgs e)
        {
            UCNhanVien uCNhanVien = new UCNhanVien();
            addtab("Nhân Viên ", uCNhanVien); 
        }

        private void btnKhachHang_Click(object sender, EventArgs e)
        {
            UCKhachHang uCKhachHang = new UCKhachHang();
            addtab("Khách Hàng", uCKhachHang); 
        }

        private void btnSanPham_Click(object sender, EventArgs e)
        {
            UCSanPham uCSanPham = new UCSanPham();
            addtab("Sản Phẩm", uCSanPham);
        }
    }
}
