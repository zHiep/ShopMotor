<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BTL_WebMotor.GioHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Giỏ Hàng</title>
    <link href="Style/CssGioHang/styleGioHang.css" rel="stylesheet" />
    <link href="Style/CssGioHang/reponsiveGioHang.css" rel="stylesheet" />
    <link href="assets/font-awesome/css/all.css" rel="stylesheet" />
    <link href="assets/icon/themify-icons/themify-icons.css" rel="stylesheet" />
    <link href="assets/icon/fontawesome-free-6.0.0-web/css/all.css" rel="stylesheet" />
    <script src="Js/GioHang.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
</head>
<body>
    <form action="GioHang.aspx" runat="server" method="post">
        <div id="main">

            <!-- HEADER -->
            <div id="header">
                <div class="grid">
                    <div class="header-content">
                        <div class="logo">
                            <a href="TrangChu.aspx">
                                <img src="assets/img/imgGioHang/HGTP__2_-removebg-preview copy.png" alt="" class="logo-img">
                            </a>
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
                                        <span class="info-register">Đăng ký</span>  
                                        <a href="" class="info-open_icon info-open_icon-rpsMobile">
                                            <i class="fa-solid fa-cart-shopping"></i>
                                        </a>
                                        <div class="info__notify">
                                            <div class="info__notify-account">
                                                <a href="DangKy.aspx" class="info__notify-register-rpsMobile">Đăng ký</a> 
                                                <a href="DangNhap.aspx" class="info__notify-login--rpsMobile">Đăng nhập</a>
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
                                <a href="" class="info-open_icon">
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
                                <li class="nav-item"><a href="">đại lý</a></li>
                            </ul>
                            <div class="nav-icon nav-icon__rpsMobile close">
                                <i class="fas fa-bars"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- BODY -->
            <div id="body">
                <div class="grid">
                    <div class="shopping__cast">
                        <div class="shopping__cast-header">
                            <p class="header-text">thông tin giỏ hàng của bạn</p>
                            <hr class="line line-1">
                        </div>
                        <div class="shopping__cast-body">
                            <div class="shopping__cast-first" id="list_item_product" runat="server">
                                    <style>
                                        table {
                                            width: 100%;
                                            text-align: center;
                                        }
 
                                        table tr td {
                                            padding: 12px 0;
                                            border-bottom: 1px solid #bbb;
                                        }

                                        thead tr th {
                                            font-size: 16px;
                                            padding-bottom: 20px;
                                        }
                                        thead tr th:first-child {
                                           text-align: left;
                                        }

                                        tbody tr td {
                                            font-size: 14px;
                                        }

                                        tbody tr td input {
                                            width: 15%;
                                        }
                                        tbody tr td:first-child {
                                            display: flex;
                                            align-items: center;
                                        }
                                        .form-first tbody tr td img {
                                            width: 150px;
                                        }
                                    </style>
                            </div>

                            
                        
                        </div>
                    </div>
                </div>
            </div>
        
            <!-- FOOTER -->
            <div id="footer" style="margin-top:100px">
                <div class="grid">
                    <div class="footer-container">
                        <div class="footer-in4">
                            <p class="footer-head">Thông tin liên hệ</p>
                            <div class="footer-in4__text" style="font-style: italic;">Số 96, Định Công, Thanh Xuân, Hà Nội</div>
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
                                    <a href="">
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
                                <img src="assets/img/imgGioHang/payment-01.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-02.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-03.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-04.png" alt="" class="footer-container__img">
                            </div>
                            <div class="footer-container__second">
                                <img src="assets/img/imgGioHang/payment-05.png" alt="" class="footer-container__img">
                                <img src="assets/img/imgGioHang/payment-06.png" alt="" class="footer-container__img">
                            </div>
                            <div class="footer-container__third">
                                <img src="assets/img/imgGioHang/payment-07.png" alt="" class="footer-container__img">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="footer-copyright">
                    <div class="grid">
                        <p class="footer-copyright__text">
                            © 2022 HGTP Vietnam. All rights reserved.
                        </p>
                    </div>
                </div>

                <!-- Nút trở lên đầu -->
                <div class="scrollTop">
                    <i class="fas fa-chevron-up"></i>
                </div>
            </div>

    </div>

    <!-- Jquery -->
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

    </form>
</body>
</html>
