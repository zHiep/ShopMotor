using BTL_WebMotor.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class GioHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["TaiKhoan"].ToString() != "")
            {
                if (IsPostBack)
                {
                    //Xử lí nút đăng xuất
                    if (Request.Form["logout"] == "Đăng xuất")
                    {
                        Session["TaiKhoan"] = "";
                        Response.Redirect("DangNhap.aspx");
                    }
                    //Xử lí nút đổi mật khẩu
                    if (Request.Form["doimk"] == "Đổi mật khẩu")
                    {
                        Response.Redirect("DoiMatKhau.aspx");
                    }
                }
                List<Cart> listCart1 = (List<Cart>)Application["listCart"];
                if (listCart1.Count !=0)
                {
                    string ma = Request.QueryString.Get("masp");
                    DeleteItemProduct(ma);
                }

                RenderUser();

                

                string chuoi = "";
                List<Cart> listCart = (List<Cart>)Application["listCart"];
                List<SanPham> listProduct = (List<SanPham>)Application["listSanPham"];
                if (listCart.Count == 0)
                {
                    chuoi += "<p style=\"font-size:2rem;\">Không có sản phẩm</p>";
                }
                else
                {
                    foreach (Cart n in listCart)
                    {
                        foreach (SanPham m in listProduct)
                        {
                            if (n.IdProduct == m.Id && n.Username == Session["TaiKhoan"].ToString())
                            {
                                chuoi += "<div class=\"shopping__cast-container\">";
                                chuoi += "<div class=\"shopping__cast-discription\">";
                                chuoi += $"<p class=\"discription-text\">{m.Name}</p>";
                                chuoi += $"<img src = \"assets/img/imgTrangChu/item_product/{m.Image}\" alt=\"\" class=\"discription-img\" >  ";
                                chuoi += "</div><div class=\"shopping__cast-amount\">";
                                chuoi += "<p class=\"amount-text\">Số lượng</p>";
                                chuoi += "<div class=\"amount-items\">";
                                chuoi += $"<input onclick = \"var price =  document.getElementById('price{m.Id}'); var result{m.Id} = document.getElementById('quantity{m.Id}'); var qty{m.Id} = result{m.Id}.value; if( !isNaN(qty{m.Id}) &amp; qty{m.Id} > 1 ) result{m.Id}.value--; var changeprice = parseInt( result{m.Id}.value)*{m.Price}; price{m.Id}.innerHTML = changeprice + ' VND';return false; \" type = 'button' value = '-' style=\"padding: 4px 8px; \"/>";
                                chuoi += $"<input id = 'quantity{m.Id}' min = '1' name = 'quantity{m.Id}' type = 'text' value = '1' style=\"width:30px;padding:4px;\"/>";
                                chuoi += $"<input onclick = \"var price =  document.getElementById('price{m.Id}'); var result{m.Id} = document.getElementById('quantity{m.Id}'); var qty{m.Id} = result{m.Id}.value; if( !isNaN(qty{m.Id})) result{m.Id}.value++; var changeprice = parseInt( result{m.Id}.value)*{m.Price}; price{m.Id}.innerHTML = changeprice + ' VND'; return false;\" type = 'button' value = '+' style=\"padding: 4px 8px; \"/> ";
                                chuoi += "</div></div>";
                                chuoi += "<div class=\"shopping__cast-price\">";
                                chuoi += "<p class=\"price-text\">Đơn giá</p>";
                                chuoi += $"<p id=\"price{m.Id}\" class=\"price-number\">{m.Price} VND</p>";
                                chuoi += "</div><div class=\"shopping__cast-act\">";
                                chuoi += "<p class=\"act-text\">Xóa</p>";
                                chuoi += $"<a href=\"GioHang.aspx?masp={m.Id}\" class=\"act-delete\" style=\"margin-top:48px;display:block;\"><i class=\"far fa-times-circle\"></i></a></div></div>";
                            }
                        }
                    }
                }
                list_item_product.InnerHtml = chuoi;

                if (Request.Form["search_name"] == "Tìm kiếm")
                {
                    string name = Request.Form["input_name"].ToString();
                    List<SanPham> listSanPham = (List<SanPham>)Application["listSanPham"];
                    List<SanPham> listTimKiem = (List<SanPham>)Session["TimKiem"];
                    bool check;
                    foreach (SanPham n in listSanPham)
                    {
                        check = n.Name.ToLower().Trim().Contains(name.ToLower().Trim());
                        if (check)
                        {
                            listTimKiem.Add(n);
                            Session["TimKiem"] = listTimKiem;
                        }
                    }
                    Response.Redirect("TrangChu.aspx");
                }
            }
            else
            {
                Response.Redirect("DangNhap.aspx");
            }
        }

        public void RenderUser()
        {
                string chuoi = "";
                chuoi += "<a href = \"#\" class=\"info-contact_icon\">";
                chuoi += "<i class=\"fas fa-user\"></i>";
                chuoi += "</a>";
                chuoi += $"<span class=\"\">{Session["TaiKhoan"].ToString()}</span> ";
                chuoi += "<div class=\"info__notify\" style='width:100px;'>";
                chuoi += "<div class=\"info__notify-account\">";
                chuoi += "<input type = \"submit\"  class=\"info__notify-register\" id=\"doimk\" name=\"doimk\" value=\"Đổi mật khẩu\">";
                chuoi += "<input type = \"submit\"  class=\"info__notify-register\" id=\"logout\" name=\"logout\" value=\"Đăng xuất\">";
                chuoi += "</div>";
                chuoi += "</div>";

                info.InnerHtml = chuoi;
        }

        public void DeleteItemProduct(string ma)
        {
            List<Cart> listCart = (List<Cart>)Application["listCart"];
            if(listCart.Count == 0)
            {
                Response.Redirect("GioHang.aspx");
            }
            else
            {
                foreach (Cart n in listCart.ToList())
                {
                    if (n.IdProduct == Convert.ToInt32(ma) && n.Username == Session["TaiKhoan"].ToString())
                    {
                        listCart.Remove(n);
                        Application["listCart"] = listCart;
                        break;
                    }
                }
            }
        }
    }
}