using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class xuly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["btnLuu"] == "Lưu")
            {
                List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];

                foreach (SanPham sp in listSanPham)
                {
                    if (sp.Id.ToString() == add_id.Value)
                    {
                        sp.Id = int.Parse(Request.QueryString["add_id"]);
                        sp.Name = Request.QueryString["add_name"];
                        sp.Price = Convert.ToDouble(Request.QueryString["add_price"]);
                        sp.Image = Request.QueryString["add_img"];
                        sp.XuatXu = Request.QueryString["add_xuatxu"];
                        sp.Color = Request.QueryString["add_color"];
                        sp.Odo = int.Parse(Request.QueryString["add_odo"]);
                        sp.PhanKhoi = Request.QueryString["add_pk"];
                        sp.LoaiXe = Request.QueryString["add_loai"];
                        sp.DoiXe = Request.QueryString["add_doixe"];
                        sp.DiaChi = Request.QueryString["add_diachi"];

                        add_id.Value = "";
                        add_name.Value = "";
                        add_price.Value = "";
                        add_img.Value = "";
                        add_xuatxu.Value = "";
                        add_color.Value = "";
                        add_odo.Value = "";
                        add_pk.Value = "";
                        add_loai.Value = "";
                        add_doixe.Value = "";
                        add_diachi.Value = "";

                        Response.Redirect("ThemSanPham.aspx");

                    }
                }
            }
            else
            {
                add_id.Value = Request.QueryString["id"];
                add_name.Value = Request.QueryString["name"];
                add_price.Value = Request.QueryString["price"];
                add_img.Value = Request.QueryString["img"];
                add_xuatxu.Value = Request.QueryString["xuatxu"];
                add_color.Value = Request.QueryString["color"];
                add_odo.Value = Request.QueryString["odo"];
                add_pk.Value = Request.QueryString["pk"];
                add_loai.Value = Request.QueryString["phanloai"];
                add_doixe.Value = Request.QueryString["doixe"];
                add_diachi.Value = Request.QueryString["diachi"];
            }
        }
    }
}