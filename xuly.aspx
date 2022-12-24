<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xuly.aspx.cs" Inherits="BTL_WebMotor.xuly" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form method="get" runat="server">
        <div>
             Nhập ID: <input type="text" id="add_id" name="add_id" runat="server"/><br />
               Nhập Tên : <input type="text" id="add_name" name="add_name" runat="server"/><br />
               Nhập Tên ảnh : <input type="text" id="add_img" name="add_img" runat="server"/><br />
               Nhập Giá : <input type="text" id="add_price" name="add_price" runat="server"/><br />
               Nhập Xuất xứ : <input type="text" id="add_xuatxu" name="add_xuatxu" runat="server"/><br />
               Nhập Màu : <input type="text" id="add_color" name="add_color"  runat="server"/><br />
               Nhập Odo : <input type="text" id="add_odo" name="add_odo" runat="server"/><br />
               Nhập Phân khối : <input type="text" id="add_pk" name="add_pk"  runat="server"/><br />
               Nhập Loại xe : <input type="text" id="add_loai" name="add_loai" runat="server"/><br />
               Nhập Đời xe : <input type="text" id="add_doixe" name="add_doixe" runat="server"/><br />
               Nhập Địa chỉ : <input type="text" id="add_diachi" name="add_diachi" runat="server"/>
            <input type="submit" id="btnLuu" runat="server" name="btnLuu" value="Lưu" />

        </div>
    </form>
</body>
</html>
