using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class ThemSanPham : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (Request.QueryString["them"] == "Thêm mới")
                {
                    bool check = true;
                    SanPham sp = new SanPham();
                    List<SanPham> listSP = (List<SanPham>)Application["listSanPham"];
                    int id = int.Parse(Request.QueryString["add_id"]);
                    foreach (SanPham n in listSP)
                    {
                        if (n.Id == id)
                        {
                            check = false;
                        }
                    }
                    if (check)
                    {
                        sp.Id = int.Parse(Request.QueryString["add_id"]);
                        sp.Name = Request.QueryString["add_name"];
                        sp.Image = Request.QueryString["add_img"];
                        sp.Price = double.Parse(Request.QueryString["add_price"]);
                        sp.LoaiXe = Request.QueryString["add_loai"];
                        sp.Odo = int.Parse(Request.QueryString["add_odo"]);
                        sp.XuatXu = Request.QueryString["add_xuatxu"];
                        sp.Color = Request.QueryString["add_color"];
                        sp.PhanKhoi = Request.QueryString["add_pk"];
                        sp.DiaChi = Request.QueryString["add_diachi"];
                        sp.DoiXe = Request.QueryString["add_doixe"];
                        listSP.Add(sp);
                        Application["listSanPham"] = listSP;

                        add_id.Value = "";
                        add_name.Value = "";
                        add_img.Value = "";
                        add_price.Value = "";
                        add_loai.Value = "";
                        add_xuatxu.Value = "";
                        add_color.Value = "";
                        add_odo.Value = "";
                        add_pk.Value = "";
                        add_diachi.Value = "";
                        add_doixe.Value = "";

                        er.InnerHtml = "<h3 style='color:red;'>Thêm thành công !</h3>";
                    }
                    else
                    {
                        er.InnerHtml = "<h3 style='color:red;'>ID sản phẩm đã tồn tại</h3>";
                    }
                }
            }

            List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];
            string chuoi = "<table  border='1' ><caption style='font-size:2rem;'>Thông tin sản phẩm</caption>";
            chuoi += "<thead><tr>";
            chuoi += "<th> ID </th>";
            chuoi += "<th> TÊN </th>";
            chuoi += "<th> GIÁ </th>";
            chuoi += "<th> ẢNH </th>";
            chuoi += "<th> XUẤT XỨ </th>";
            chuoi += "<th> MÀU </th>";
            chuoi += "<th> TÌNH TRẠNG </th>";
            chuoi += "<th> ODO </th>";
            chuoi += "<th> PHÂN KHỐI </th>";
            chuoi += "<th> ĐỜI XE </th>";
            chuoi += "<th> ĐỊA CHỈ </th>";
            chuoi += "<th> CHỨC NĂNG </th>";

            chuoi += "</tr></thead><tbody>";
            foreach (SanPham n in listSanPham)
            {
                chuoi += $"<tr><td id='masp'>{n.Id}</td>";
                chuoi += $"<td>{n.Name}</td>";
                chuoi += $"<td>{n.Price} VND</td>";
                chuoi += $"<td><img src=\"assets/img/imgTrangChu/item_product/{n.Image}\" style='width: 100px'; height: 60px; '></td>";
                chuoi += $"<td>{n.XuatXu}</td>";
                chuoi += $"<td>{n.Color}</td>";
                chuoi += $"<td>{n.LoaiXe}</td>";
                chuoi += $"<td>{n.Odo}</td>";
                chuoi += $"<td>{n.PhanKhoi}</td>";
                chuoi += $"<td>{n.DoiXe}</td>";
                chuoi += $"<td>{n.DiaChi}</td>";
                chuoi += $"<td><a href='xuly.aspx?id={n.Id}&name={n.Name}&price={n.Price}&img={n.Image}&xuatxu={n.XuatXu}&color={n.Color}&phanloai={n.LoaiXe}&odo={n.Odo}&pk={n.PhanKhoi}&doixe={n.DoiXe}&diachi={n.DiaChi}'>Sửa</a></td></tr>";
            }
            chuoi += "</tbody></table>";
            table_sanpham.InnerHtml = chuoi;

        }
    }
}
