<%@ page pageEncoding="utf-8"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Waggy Pet Shop</title>
    <!-- ICON -->
    <link rel="icon" href="images/nhaiconbanphim2-01.png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/246169b37f.js" crossorigin="anonymous"></script>
    <!-- Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-cn7l7gDp0ey6b8c5UyN9UNpSLQFcpTxuP8r72d9czD8Gknf2/2frT0BOu71lfFhH"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <!-- FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Chilanka&family=Montserrat:wght@300;400;500&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300..700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Playpen+Sans:wght@100..800&display=swap" rel="stylesheet">
    <link
        href="https://fonts.googleapis.com/css2?family=Grandstander:ital,wght@0,100..900;1,100..900&family=Playpen+Sans:wght@100..800&display=swap"
        rel="stylesheet">

    <!-- ANGULAR JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.8.2/angular.min.js"></script>
    <script src="https://code.angularjs.org/1.8.2/angular-route.min.js"></script>

     <link rel="stylesheet" href="stylesheet">
</head>

<body>

    <!-- HEADER START -->
    <header class="bg-body shadow border-bottom ">
        <div class="container">
            <!-- BANNER HEADER -->
            <div class="d-flex">
                <div class="navbar-brand d-flex align-items-center gap-4 ">
                    <img src="images/logo.png" alt="logo" class="logo">
                </div>
            </div>
            <nav class="main-menu d-flex navbar navbar-expand-lg ">
                <!-- KHÔNG REPOSIVE -->
                <div class="d-flex d-lg-none align-items-end mt-3">
                    <ul class="d-flex justify-content-end list-unstyled m-0">
                        <li>
                            <a href="/account" class="mx-3">
                                <i class="fa-solid fa-user"></i>
                            </a>
                        </li>
                        <li>
                            <a href="wishlist.html" class="mx-3">
                                <i class="fa-solid fa-heart"></i>
                            </a>
                        </li>
                        <li class="">
                            <a href="giohang.html" class="mx-3" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
                                aria-controls="offcanvasCart">
                                <i class="fa-solid fa-cart-shopping"></i>
                                <span
                                    class="position-absolute translate-middle badge rounded-circle bg-warning  pt-2 m-0">
                                    03
                                </span>
                            </a>
                        </li>
                    </ul>
                </div>

                <!-- REPOSIVE BUTTON-->
                <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas"
                    data-bs-target="#offcanvasNavbar" aria-controls="offcanvasNavbar">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasNavbar"
                    aria-labelledby="offcanvasNavbarLabel">
                    <div class="offcanvas-header justify-content-end ">
                        <button type="button" class="btn-close w-50 border border-5 shadow-sm  "
                            data-bs-dismiss="offcanvas" aria-label="Close"></button>
                    </div>
                    <div class="offcanvas-body justify-content-between align-items-center ">
                        <div class="d-flex">
                            <select class="shadow form-select border-0 mb-0 me-1">
                                <option selected>Shop by Category</option>
                                <option>Clothes</option>
                                <option>Food</option>
                                <option>Toy</option>
                            </select>
                        </div>
                        <ul class="navbar-nav menu-list list-unstyled d-flex gap-md-3 mb-0">
                            <li class="nav-item">
                                <a href="index.html" class="nav-link active text-warning animated-link">Home</a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" role="button" id="pages" data-bs-toggle="dropdown"
                                    aria-expanded="false">Pages</a>
                                <ul class="dropdown-menu" aria-labelledby="pages">
                                    <li><a href="about.html" class="dropdown-item">About Us<span
                                                class="badge bg-success text-warning  ms-2">PRO</span></a></li>
                                    <li><a href="shop.html" class="dropdown-item">Shop<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="single-product.html" class="dropdown-item">Single Product<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="cart.html" class="dropdown-item">Cart<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="wishlist.html" class="dropdown-item">Wishlist<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="checkout.html" class="dropdown-item">Checkout<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="blog.html" class="dropdown-item">Blog<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="single-post.html" class="dropdown-item">Single Post<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="contact.html" class="dropdown-item">Contact<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="faqs.html" class="dropdown-item">FAQs<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="account.html" class="dropdown-item">Account<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="thank-you.html" class="dropdown-item">Thankyou<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="error.html" class="dropdown-item">Error 404<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                    <li><a href="styles.html" class="dropdown-item">Styles<span
                                                class="badge bg-success text-warning ms-2">PRO</span></a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a href="shop.html" class="nav-link">Shop</a>
                            </li>
                            <li class="nav-item">
                                <a href="blog.html" class="nav-link">Blog</a>
                            </li>
                            <li class="nav-item">
                                <a href="giohang.html" class="nav-link">Cart</a>
                            </li>
                            <li class="nav-item">
                                <a href="#" class="nav-link">Others</a>
                            </li>
                            <li class="nav-item">
                                <a href="https://templatesjungle.gumroad.com/l/waggy-pet-shop-ecommerce-html-website-template"
                                    class="nav-link fw-bold text-dark" target="_blank">GET PRO</a>
                            </li>
                        </ul>
                        <!-- SEARCH -->
                        <div class="search-container d-flex align-items-center ">
                            <button id="search-btn" class="search-btn">
                                <i class="fa fa-search"></i>
                            </button>
                            <input type="text" id="search-input" class="search-input" placeholder="Search...">
                            <button id="submit-btn" class="submit-btn">
                                <i class="fa fa-paper-plane"></i>
                            </button>
                        </div>
                        <!-- END SEARCH -->
                        <!-- SAU REPOSIVE -->
                        <div class="d-none d-lg-flex align-items-end">
                            <ul class="d-flex justify-content-end list-unstyled m-0">
                                <li>
                                    <a href="/user/login" class="mx-3">
                                        <i class="fa-solid fa-user"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="wishlist.html" class="mx-3">
                                        <i class="fa-solid fa-heart"></i>
                                    </a>
                                </li>
                                <li class="">
                                    <a href="#" class="mx-3" data-bs-toggle="offcanvas" data-bs-target="#offcanvasCart"
                                        aria-controls="offcanvasCart">
                                        <i class="fa-solid fa-cart-shopping"></i>
                                        <span
                                            class="position-absolute translate-middle badge rounded-circle bg-warning  pt-2 m-0">
                                            03
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </div>
    </header>
    <!-- HEADER END -->

    <!-- MAIN START -->
    <main>
        <!-- BANNER -->
        <div id="banner" class="carousel slide shadow-lg" data-bs-ride="carousel" data-bs-interval="3000">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images/banner-img.png" class="d-block" alt="...">
                    <div class="carousel-caption d-none d-md-block text-dark">
                        <h5 class="text-dark">Save 10 - 20 % off</h5>
                        <p class="text-dark">Best destination for your pets</p>
                        <div class="d-md-flex justify-content-md-center align-items-md-center">
                            <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
                                now</a>
                        </div>
                    </div>
                    <div class="d-block d-md-none text-dark text-center">
                        <h5 class="text-dark">Save 10 - 20 % off</h5>
                        <p class="text-dark">Best destination for your pets</p>
                        <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1">Shop now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/banner-img3.png" class="d-block" alt="...">
                    <div class="carousel-caption d-none d-md-block text-dark">
                        <h5 class="text-dark">Save 10 - 20 % off</h5>
                        <p class="text-dark">Best destination for your pets</p>
                        <div class="d-md-flex justify-content-md-center align-items-md-center">
                            <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
                                now</a>
                        </div>
                    </div>
                    <div class="d-block d-md-none text-dark text-center">
                        <h5 class="text-dark">Save 10 - 20 % off</h5>
                        <p class="text-dark">Best destination for your pets</p>
                        <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
                            now</a>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/banner-img4.png" class="d-block" alt="...">
                    <div class="carousel-caption d-none d-md-block text-dark">
                        <h5 class="text-dark">Save 10 - 20 % off</h5>
                        <p class="text-dark">Best destination for your pets</p>
                        <div class="d-md-flex justify-content-md-center align-items-md-center">
                            <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 mt-md-3">Shop
                                now</a>
                        </div>
                    </div>
                    <div class="d-block d-md-none text-dark text-center">
                        <h5 class="text-dark">Save 10 - 20 % off</h5>
                        <p class="text-dark">Best destination for your pets</p>
                        <a href="#" class="btn btn-outline-dark btn-lg text-uppercase fs-6 rounded-1 w-50">Shop now</a>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev btn-dark" type="button" data-bs-target="#banner" data-bs-slide="prev">
                <i class="fa-solid fa-caret-left"></i>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next btn-dark" type="button" data-bs-target="#banner" data-bs-slide="next">
                <i class="fa-solid fa-caret-right"></i>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!-- CATEGORIES -->
        <section id="categories">
            <div class="container my-3 py-5">
                <div class="row my-5">
                    <div class="col text-center">
                        <a href="#" class="categories-item">
                            <i class="fas fa-utensils category-icon"></i>
                            <h5 class="mt-3">Foodies</h5>
                        </a>
                    </div>
                    <div class="col text-center">
                        <a href="#" class="categories-item">
                            <i class="fas fa-dove category-icon"></i>
                            <h5 class="mt-3">Bird Shop</h5>
                        </a>
                    </div>
                    <div class="col text-center">
                        <a href="#" class="categories-item">
                            <i class="fas fa-dog category-icon"></i>
                            <h5 class="mt-3">Dog Shop</h5>
                        </a>
                    </div>
                    <div class="col text-center">
                        <a href="#" class="categories-item">
                            <i class="fas fa-fish category-icon"></i>
                            <h5 class="mt-3">Fish Shop</h5>
                        </a>
                    </div>
                    <div class="col text-center">
                        <a href="#" class="categories-item">
                            <i class="fas fa-cat category-icon"></i>
                            <h5 class="mt-3">Cat Shop</h5>
                        </a>
                    </div>
                </div>
            </div>
        </section>
   <section id="item-list">
    <div class="container my-3 py-5">
        <div class="row my-5">
            <div class="col text-center">
                <c:forEach var="item" items="${thuCungItems}">
					<img id="${item.hinhAnh}" alt="${item.hinhAnh}" src="${item.hinhAnh}"/>
                    <a href="${pageContext.request.contextPath}/productdetail/${item.maThuCung}">${item.tenThuCung}</a>
                </c:forEach>
            </div>
        </div>
    </div>
</section>
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasCart" aria-labelledby="offcanvasCartLabel">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasCartLabel">Shopping Cart</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="card">
                    <div class="card-body">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Giá</th>
                                    <th>Tổng</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Thức ăn cho chó</td>
                                    <td>2</td>
                                    <td>$20</td>
                                    <td>$40</td>
                                    <td><button class="btn btn-danger btn-sm">Xóa</button></td>
                                </tr>
                                <tr>
                                    <td>Đồ chơi cho mèo</td>
                                    <td>1</td>
                                    <td>$15</td>
                                    <td>$15</td>
                                    <td><button class="btn btn-danger btn-sm">Xóa</button></td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="text-right">
                            <h5>Tổng cộng: $55</h5>
                            <button class="btn btn-success">Thanh toán</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <!-- MAIN END -->

    <!-- FOOTER START -->
    <footer class="my-5 shadow-lg">
        <div class="container py-5 my-5">
            <div class="row">
                <div class="col-md-3">
                    <div class="footer-menu">
                        <img width="100%" src="images/logo.png" alt="logo">
                        <p class="blog-paragraph fs-6 mt-3">Đăng ký nhận tin để nhận thông tin về các ưu đãi lớn của
                            chúng
                            tôi.</p>
                        <div class="social-links">
                            <ul class="d-flex list-unstyled gap-2">
                                <li class="social">
                                    <a href="https://www.facebook.com/hiimcorn">
                                        <i class="fab fa-facebook-f social-icon"></i>
                                    </a>
                                </li>
                                <li class="social">
                                    <a href="#">
                                        <i width="100%" class="fab fa-twitter social-icon"></i>
                                    </a>
                                </li>
                                <li class="social">
                                    <a href="#">
                                        <i class="fab fa-pinterest-p social-icon"></i>
                                    </a>
                                </li>
                                <li class="social">
                                    <a href="#">
                                        <i class="fab fa-instagram social-icon"></i>
                                    </a>
                                </li>
                                <li class="social">
                                    <a href="#">
                                        <i class="fab fa-youtube social-icon"></i>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-menu">
                        <h3>Liên kết nhanh</h3>
                        <ul class="menu-list list-unstyled">
                            <li class="menu-item">
                                <a href="#" class="nav-link">Trang chủ</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Về chúng tôi</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Ưu đãi</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Dịch vụ</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Liên hệ</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="footer-menu">
                        <h3>Trung tâm trợ giúp</h3>
                        <ul class="menu-list list-unstyled">
                            <li class="menu-item">
                                <a href="#" class="nav-link">Câu hỏi thường gặp</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Thanh toán</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Đổi trả & Hoàn tiền</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Thanh toán</a>
                            </li>
                            <li class="menu-item">
                                <a href="#" class="nav-link">Thông tin giao hàng</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div>
                        <h3>Bản tin của chúng tôi</h3>
                        <p class="blog-paragraph fs-6">Đăng ký nhận tin của chúng tôi để cập nhật các ưu đãi lớn nhất
                            của
                            chúng tôi.</p>
                        <div class="search-bar border rounded-pill border-dark-subtle px-2">
                            <form class="text-center d-flex align-items-center" action="" method="">
                                <input type="text" class="form-control border-0 bg-transparent"
                                    placeholder="Nhập email của bạn ở đây" />
                                <iconify-icon class="send-icon" icon="tabler:location-filled"></iconify-icon>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <div class="footer-bottom">
        <div class="container">
            <hr class="m-0">
            <div class="row mt-3">
                <div class="col-md-6 copyright">
                    <p class="secondary-font">© 2024 Vanh.</p>
                </div>
            </div>
        </div>
    </div>
    <!-- FOOTER END -->

</body>
<script src="script.js"></script>

</html>