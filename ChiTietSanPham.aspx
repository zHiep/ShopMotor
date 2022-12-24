﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="BTL_WebMotor.ChiTietSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Mono:wght@100&display=swap" rel="stylesheet" />
    <link href="Style/CssChiTietSanPham/styleChiTietSanPham.css" rel="stylesheet" />
    <link href="assets/icon/fontawesome-free-6.0.0-web/css/all.min.css" rel="stylesheet" />
    <link href="assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
    <link rel="stylesheet" href="./assets/font-icon/fontawesome-free-6.0.0-web/css/all.css"/>
    <link href="Style/CssChiTietSanPham/responsiveChiTietSanPham.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <title>Trang Chi Tiết Sản Phẩm</title>

</head>

    <body>
<form runat ="server">
    <div class="App">                             
         <!-- HEADER -->
         <div id="header">
            <div class="grid">
                <div class="header-content">
                    <div class="logo">
                        <img src="assets/img/imgChiTietSanPham/HGTP__2_-removebg-preview copy.png" alt="" class="logo-img"/>
                    </div>
                    <div class="header-item">
                        <div class="header-search">
                             <input type="text" name="input_name" id="input_name" class="input-search" placeholder="Nhập từ khóa tìm kiếm"/>
                            <input type="submit" id="search_name" name="search_name" class="menu-search_icon" style="color:white;font-size:1.4rem;" value="Tìm kiếm"/>
                        </div>
                        <div class="header-info header-info__rpsMobile close">
                            <div class="header-info_first">
                                <a href="#" class="social-icon">
                                    <i class="fab fa-facebook-f"></i>
                                </a>
                                <a href="#" class="social-icon">
                                    <i class="fab fa-youtube"></i>
                                </a>
                                <div class="info-contact">
                                    <a href="#" class="info-contact_icon">
                                        <i class="fas fa-user"></i>
                                    </a>
                                    <span class="info-login">Đăng Nhập</span>
                                    <span class="info-SignUp">Đăng ký</span>  
                                    <a href="" class="info-open_icon info-open_icon-rpsMobile">
                                        <i class="fa-solid fa-cart-shopping"></i>
                                    </a>
                                    <div class="info__notify">
                                        <div class="info__notify-account">
                                            <a href="./SignUp.html" class="info__notify-SignUp-rpsMobile">Đăng ký</a> 
                                            <a href="./LogIn.html" class="info__notify-login--rpsMobile">Đăng nhập</a>
                                            <a href="" class="info__notify-text">
                                                <i class="fas fa-chevron-right"></i>
                                                Dịch vụ khách hàng
                                            </a>
                                            <a href="" class="info__notify-text">
                                                <i class="fas fa-chevron-right"></i>
                                                Hỗ trợ khách hàng
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header-info">
                        <div class="header-info_first">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-youtube"></i>
                            </a>
                           <div class="info-contact"  id="info" runat="server">
                            </div>
                        </div>
                        <div class="header-info_second">
                            <a href="ThemSanPham.aspx" class="info-post_icon">
                                <i class="fas fa-edit"></i>
                                <p>Đăng bán xe</p>
                            </a>
                            <a href="GioHang.aspx" class="info-open_icon">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <p>Giỏ hàng</p>
                            </a>
                            <a href="" class="info-question_icon">
                                <i class="far fa-question-circle"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <!-- NAVIGATION -->
            <div class="container">
                <div class="nav ">
                    <div class="grid">
                        <p class="nav-text nav-text__rpsMobile close">TÙY CHỌN</p>
                        <ul class="nav-first">
                            <li class="nav-item"><a href="TrangChu.aspx">Trang chủ</a></li>
                            <li class="nav-item"><a href="TrangChu.aspx">chợ xe máy</a></li>
                            <li class="nav-item"><a href="">tin tức</a></li>
                        </ul>
                        <div class="nav-icon nav-icon__rpsMobile close">
                            <i class="fas fa-bars"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div> 

        <div class="body"> 
                            <!-- PHAN BANNER -->
            <div class="banner"> 
                <div id="banner-motobike">
                    <figure class="loader">
                        <a href="" target="_blank">
                            <div class="loader_banner" style="background-image: url(assets/img/imgChiTietSanPham/banner.jpg);"> 

                            </div> 
                        </a>
                    </figure>
                </div>
            </div> 
        </div>
                            <!-- QUÁ TRÌNH CHI TIẾT SẢN PHẨM -->
        <div id="body">
            <div class="grid"> 
                <div class="box_content" id="infoSanpham" runat="server"> 
                            <!-- Code đổ dữ liệu chi tiết sản phẩm -->
                </div> 
                <section class="product_info">
                    <div class="tabslet">
                        <ul class="tabs-list">
                            <li class="item tabs-iteam">
                                <a href="">Mô tả xe</a>
                            </li>
                            <li class="iteam tabs-Spec">
                                <span class="title-Spec">
                                    Thông số kỹ thuật được cập nhật từ nhà sản xuất
                                </span> 
                                <a href="">Thông số kỹ thuật</a>
                            </li>
                        </ul>
                    </div>
                    <div class="tab_contents">
                        <div class="show">
                            <div>
                                <p>
                                    XE mới Nguyên zin , Không 1 vết trầy , AE thiện chí Kb zalo nhaHotline :  A Phong có zalo (không nhận sms). Trân Trọng !
                                </p>
                            </div>
                        </div>
                    </div>
                </section>
                    <!-- PHẦN TEXT LIKE -->
                <div class="example-title">
                    <p class="example-text">có thể bạn sẽ thích</p>
                    <a href="#" class="example-text__extend">
                        Xem thêm
                        <i class="ti-angle-double-right"></i>
                    </a>
                </div>
                <hr class="line line-3"  style="color:var(--primary-color);">
                    <!-- PHẦN XE LIÊN QUAN -->
                <div class="example-container__second">
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/xe1.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">HONDA CBR1000RR</p>
                            <p class="example-discription__price">416.500.000 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/xe2.jpg" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">SUZUKI GSX R1000R</p>
                            <p class="example-discription__price">56.300.000 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/xe3.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">Kawasaki Ninja 1000</p>
                            <p class="example-discription__price">155.000.000 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/999_winner-150.jpg" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">HONDA Winner 150</p>
                            <p class="example-discription__price">71.500.000 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/991_versys-1000.jpg" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">Kawasaki Versys 1000</p>
                            <p class="example-discription__price">318.000.000 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/1016_xr-150.jpg" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">HONDA XR 150</p>
                            <p class="example-discription__price">62.000.000 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                </div>  
                 <h3  class="Accessories-included">
                     <span class="title">
                        Phụ kiện đi kèm
                     </span>
                    </h3>
                    <!-- PHẦN PHỤ KIỆN KÈM -->
                <div class="example-container__second two">
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/phutung1.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">KN Planning Silentstreet Muffler</p>
                            <p class="example-discription__price">3.270.016 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/phutung2.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">DAYTONA Rào cản (R) Bộ theo mô hình ô tô</p>
                            <p class="example-discription__price">3.834.311 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/phutung3.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">YOSHIMURA Chế hòa khí YOSHIMURA dòng Mikuni</p>
                            <p class="example-discription__price">4.955.460 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/phutung4.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">DAYTONA Ống bảo vệ động cơ</p>
                            <p class="example-discription__price">4.975.438</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/phutung5.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">OVER RACING Swing Arm Loại OV</p>
                            <p class="example-discription__price">13.358.197 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                    <div class="example-items__second">
                        <a href=""><img src="assets/img/imgChiTietSanPham/phutung6.png" alt="" class="example-img"></a>
                        <div class="example-discription">
                            <p class="example-discription__text">KIJIMA Nhà cung cấp phía sau</p>
                            <p class="example-discription__price">3.327.013 VND</p>
                            <div class="example-discription__btn">
                                <button class="example-discription__details">Chi tiết</button>
                                <i class="fa-solid fa-cart-plus"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
        <!-- FOOTER -->
        <div id="footer">
            <div class="grid">
                <div class="footer-container">
                    <div class="footer-in4">
                        <p class="footer-head">Thông tin liên hệ</p>
                        <div class="footer-in4__text" style="font-style: italic;">Số 96, Định Công, Hoàng Mai, Hà Nội</div>
                        <div class="footer-in4__text">Giờ làm việc: Thứ 2 - 6: 8h00 - 17h00</div>
                        <div class="footer-in4__text">Email: <span>support@hgtp.vn</span></div>
                        <div class="footer-in4__text">Số bàn: <span>028 3821 0587</span></div>
                        <div class="footer-in4__text">Đường dây nóng: <span>0932 979 060 - 0932 858 030</span></div>
                        <div class="footer-icon__first">
                            <a href="#" class="social-icon">
                                <i class="fab fa-facebook-f"></i>
                            </a>
                            <a href="#" class="social-icon">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </div>
                        <div class="footer-certification">
                            <div class="footer-certification__global">
                                <i class="fa-solid fa-globe"></i>
                                <p class="footer-certification__text">HGTP Global</p>
                            </div>
                            <div class="footer-certification__img">
                                <img src="https://webikevn-8743.kxcdn.com/frontend/img/bo_cong_thuong.svg" alt="">
                            </div>
                        </div>
                    </div>
                    
                    <div class="footer-content">
                        <p class="footer-head">siêu thị phụ tùng</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Dòng xe    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Hãng xe    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Chính hãng    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phụ tùng    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Đồ bảo hộ    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Mũ bảo hiểm    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phụ kiện    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Thành viên    
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-content">
                        <p class="footer-head">chợ xe máy</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phân khối lớn
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Hãng xe    
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Phân khối 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Loại xe
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Tỉnh thành 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Cửa hàng
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Tiện ích 
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-content">
                        <p class="footer-head">thông tin khác</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Quy chế hoạt động  
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Chính sách bảo mật 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Bản quyền 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Hỗ trợ khách hàng
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Sơ đồ trang 
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Liên hệ
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-content">
                        <p class="footer-head">tin tức xe máy</p>
                        <ul>
                            <li class="footer-content__text">
                                <a href="TrangChu.aspx">
                                    <i class="ti-angle-right"></i>
                                    Trang chủ
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Tin tức - sự kiện   
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Thông tin xe máy  
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Kinh nghiệm
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Xe độ
                                </a>
                            </li>
                            <li class="footer-content__text">
                                <a href="#">
                                    <i class="ti-angle-right"></i>
                                    Video giải trí
                                </a>
                            </li>
                        </ul>
                    </div>

                    <div class="footer-payment">
                        <p class="footer-head">phương thức thanh toán</p>
                        <div class="footer-container__first">
                            <img src="assets/img/imgChiTietSanPham/payment-01.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgChiTietSanPham/payment-02.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgChiTietSanPham/payment-03.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgChiTietSanPham/payment-04.png" alt="" class="footer-container__img">
                        </div>
                        <div class="footer-container__second">
                            <img src="assets/img/imgChiTietSanPham/payment-05.png" alt="" class="footer-container__img">
                            <img src="assets/img/imgChiTietSanPham/payment-06.png" alt="" class="footer-container__img">
                        </div>
                        <div class="footer-container__third">
                            <img src="assets/img/imgChiTietSanPham/payment-07.png" alt="" class="footer-container__img none">
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-copyright">
                <div class="grid">
                    <p class="footer-copyright__text">
                        © 2020 HGTP Vietnam. All rights reserved.
                    </p>
                </div>
            </div>
            <!-- Nút trở lên đầu -->
            <div class="scrollTop">
                <i class="fas fa-chevron-up"></i>
            </div>
        </div>
    </div>
</form>
</body>
    
     <!-- Jquery -->\
     <script>
         $(document).ready(function () {
             $(window).scroll(function () {
                 if ($(this).scrollTop()) {
                     $('.scrollTop').fadeIn();
                 } else {
                     $('.scrollTop').fadeOut();
                 }
             });
             $('.scrollTop').click(function () {
                 $('html, body').animate({ scrollTop: 0 }, 500)
             });
         });
     </script>
</html>
