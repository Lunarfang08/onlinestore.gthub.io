<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Acc.aspx.cs" Inherits="SportsEquipmentWebsite.Acc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Accessories Page</title>
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
        
        .card-img-top {
            height: 200px;
            object-fit: contain;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Accessories Page</h1>

            <div class="card">
                <img src="https://cdn.shopify.com/s/files/1/0490/2518/8002/products/image_fe3c7da6-90d3-4ad7-bf4e-068a6dbd84d0_1024x1024.jpg" class="card-img-top" alt="Water Bottle"/>
                <div class="card-body">
                    <h2 class="card-title">Water Bottle</h2>
                    <p class="card-text">Stay hydrated during your workouts.</p>
                    <p class="card-text">Price:20$</p>
                    <button class="checkout-button"><a href="ThankYou.aspx" style="text-decoration:none">Proceed to Checkout</a></button>
                </div>
            </div>

            <div class="card">
                <img src="https://cdn.shopify.com/s/files/1/0156/6146/products/EverydayHoldallBlackI1A1G-BBBB_ae777e6a-1a92-47aa-9439-a699340aa97a_1920x.jpg" class="card-img-top" alt="Gym Bag"/>
                <div class="card-body">
                    <h2 class="card-title">Gym Bag</h2>
                    <p class="card-text">Carry your sports gear with style.</p>
                    <p class="card-text">Price:60$</p>
                   <button class="checkout-button"><a href="ThankYou.aspx" style="text-decoration:none">Proceed to Checkout</a></button>
                </div>
            </div>

            <div class="card">
                <img src="https://www.sportsdirect.com/images/imgzoom/81/81808730_xxl.jpg" class="card-img-top" alt="Shinpads"/>
                <div class="card-body">
                    <h2 class="card-title">Shinpads</h2>
                    <p class="card-text">Price:13.35$</p>
                    <p class="card-text">Complete ankle protection.</p>
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
