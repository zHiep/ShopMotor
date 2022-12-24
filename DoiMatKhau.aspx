<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="BTL_WebMotor.DoiMatKhau" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div runat="server" >
               <div id="name_user" runat="server">
               </div>
            <div>
               Mật khẩu cũ: <input type="text" id="pass_cu" name="pass_cu" placeholder="Mật mật khẩu cũ"/><br />
               Nhập mật khẩu mới : <input type="text" id="pass_moi" name="pass_moi" placeholder="Mật khẩu mới"/><br />
               Mật lại mật khẩu mới : <input type="text" id="repass_moi" name="repass_moi" placeholder="Nhập lại mật khẩu mới"/><br />
            </div>
            <div>
              <input type="submit" id="xacnhan" name="xacnhan" value="Xác nhận"/>
            </div>
        </div>
        <div id="error" runat="server"> </div>
    </form>
</body>
</html>
