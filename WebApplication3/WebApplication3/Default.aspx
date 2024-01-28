<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SportsEquipmentWebsite.Default" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sports Equipment Website</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        .carousel-caption {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
            color: #fff;
        }
        body {
             background-image: url('https://st.depositphotos.com/1162190/1951/i/450/depositphotos_19511151-stock-photo-green-soccer-field.jpg');
        }
        .jumbotron {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 50px;
            margin-bottom: 0;
        }

        .carousel-caption {
            background-color: rgba(0, 0, 0, 0.7);
            padding: 20px;
        }

        .carousel-caption h3,
        .carousel-caption p {
            color: #fff;
        }

        .featured-products {
            margin-top: 50px;
        }

        .product-card {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            transition: transform 0.2s;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }
        .display-4 {
            color:aquamarine;
        }
        .lead {
            color:aquamarine;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron mt-5">
                <h1 class="display-4">AU Sports</h1>
                <p class="lead">Explore our wide range of sports equipment and accessories.</p>
            </div>

            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://media.istockphoto.com/id/905105146/photo/sports-equipment-on-green-grass-top-view.webp?s=2048x2048&w=is&k=20&c=-hjNIo2WlPiRBv7iVE7Rx2Wi_f2Lk4A14w-HXL_vEC4=" alt="Banner 1" class="d-block w-100"/>
                        <div class="carousel-caption">
                            <h3>Welcome to Sports Equipment Website</h3>
                            <p>Explore our wide range of sports equipment and accessories.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.squarespace-cdn.com/content/v1/5b833b307e3c3a2ba0e1efa3/b1e5252d-c8e0-4902-8e32-975ddea4df73/kit-banner-23-min.png?format=2500w" alt="Banner 2" class="d-block w-100"/>
                        <div class="carousel-caption">
                            <h3>Quality and Performance</h3>
                            <p>Find high-quality equipment to enhance your sports experience.</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="https://images.squarespace-cdn.com/content/v1/5b833b307e3c3a2ba0e1efa3/1613965306673-CJUZTKRL6VUUSXFPA0B0/Catalogue-Mockup-min.png?format=1500w" alt="Banner 3" class="d-block w-100"/>
                        <div class="carousel-caption">
                            <h3>Shop Now</h3>
                            <p>Visit our products page to browse and purchase sports equipment.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>

            <div class="my-5">
                <h2>Featured Products</h2>
                <div class="row" runat="server" id="featuredProductsContainer">
                   
                </div>
            </div>
        </div>

        <button id="goBackButton" class="go-back-button" style="display: none;" onclick="goBack()">Go Back</button>

        <script>
            window.onload = function () {
                var cartItems = sessionStorage.getItem("cartItems");

                if (cartItems) {
                    document.getElementById("goBackButton").style.display = "block";
                }
            };
        </script>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
