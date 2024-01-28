<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Footballs.aspx.cs" Inherits="SportsEquipmentWebsite.Footballs" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Footballs Page</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        body {
            background-color: #f8f9fa;
        }

        .container {
            margin-top: 50px;
        }

        .card {
            border: none;
            background-color: #fff;
        }

        .card-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .card-text {
            color: #777;
        }

        .btn-check {
            background-color: #007bff;
            color: #fff;
        }

        .football-image {
            width: 300px;
            height: auto;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Footballs Page</h1>

            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Brazuca</h2>
                    <p class="card-text">World Cup 2014</p>
                    <p class="card-text">Price:35$</p>
                    <img src="https://upload.wikimedia.org/wikipedia/commons/3/3b/Brazil_and_Colombia_match_at_the_FIFA_World_Cup_2014-07-04_%2815%29_%28cropped%29.jpg" class="football-image" />
                     <button class="checkout-button"><a href="ThankYou.aspx" style="text-decoration:none">Proceed to Checkout</a></button>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Igneto</h2>
                    <p class="card-text">World Cup 2018</p>
                     <p class="card-text">Price:45$</p>
                    <img src="https://football-balls.com/ball_files/2018-world-cup-adidas-telstar-18-mechta-official-final-match-ball-big.png" class="football-image" />
                     <button class="checkout-button"><a href="ThankYou.aspx" style="text-decoration:none">Proceed to Checkout</a></button>
                </div>
            </div>

            <div class="card">
                <div class="card-body">
                    <h2 class="card-title">Nike</h2>
                    <p class="card-text">Official Tempest Model</p>
                       <p class="card-text">Price:55$</p>
                    <img src="https://www.3qsports.co.uk/images/option_value/source/CU8064-100-PHSFZ001-2000%20-%20Copy.jpg?t=1657848792" class="football-image" />
                    <button class="checkout-button"><a href="ThankYou.aspx" style="text-decoration:none">Proceed to Checkout</a></button>
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
