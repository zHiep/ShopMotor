using BTL_WebMotor.Class;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTL_WebMotor
{
    public partial class DoiMatKhau : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            name_user.InnerHtml = $"<p>Account : {Session["TaiKhoan"]}</p>";

            if (Request.Form["xacnhan"] == "Xác nhận")
            {
                string pass_moi = Request.Form["pass_moi"];
                string repass_moi = Request.Form["repass_moi"];
                string passcu = Request.Form["pass_cu"];
                List<TaiKhoan> DSTK = (List<TaiKhoan>)Application["TaiKhoan"];

                if (pass_moi == repass_moi)
                {
                    foreach (TaiKhoan n in DSTK)
                    {
                        if (Session["TaiKhoan"].ToString() == n.Username && passcu == n.Password)
                        {
                            n.Password = pass_moi;
                            error.InnerHtml = $"<h2 style='color:red;'>Đổi mật khẩu thành công!</h2><a href='TrangChu.aspx'>Quay lại Trang Chủ</a>";
                        }
                    }
                }
                else
                {
                    error.InnerHtml = $"<h2 style='color:red;'>Nhập lại mật khẩu chưa đúng</h2>";
                }
            }
        }
    }
}