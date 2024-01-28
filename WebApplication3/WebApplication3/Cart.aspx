<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="SportsEquipmentWebsite.Cart" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cart</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <style>
        .jumbotron {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 50px;
            margin-bottom: 0;
        }

        .cart-item {
            border: 1px solid #ccc;
            padding: 20px;
            margin-bottom: 20px;
            border-radius: 5px;
            background-color: #f9f9f9;
        }

        .cart-item img {
            max-width: 100px;
            max-height: 100px;
            margin-right: 20px;
        }

        .cart-item h4 {
            margin-top: 0;
        }

        .cart-item p {
            margin-bottom: 0;
        }

        .go-back-button {
            padding: 10px 20px;
            background-color: #ccc;
            border: none;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .go-back-button:hover {
            background-color: #999;
        }

        .checkout-button {
            padding: 10px 20px;
            background-color: aquamarine;
            border: none;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .checkout-button:hover {
            background-color: darkcyan;
        }

        body {
            background-image: url('https://st.depositphotos.com/1162190/1951/i/450/depositphotos_19511151-stock-photo-green-soccer-field.jpg');
        }
        .display-4 {
            color: aquamarine;
        }
        .lead {
            color: aquamarine;
        }
        .shirt-selector {
            margin-bottom: 20px;
        }

        /* Adjusted Image and Select Styles */
        .shirt-image {
            max-width: 200px;
            max-height: 200px;
            margin-right: 20px;
        }

        select {
            width: 200px;
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="jumbotron mt-5">
                <h1 class="display-4">Your Cart</h1>
                <p class="lead">Review and complete your purchase.</p>
            </div>

            <div class="shirt-selector">
                <label for="shirtSelect">Select Shirt:</label>
                <select id="shirtSelect" onchange="shirtSelected()">
                    <option value="1">FCB kit</option>
                    <option value="2">Real Madrid kit</option>
                    <option value="3">Chelsea kit</option>
                </select>
                <a href='Footballs.aspx' class='btn btn-primary'>CheckFootballs</a>
                  <a href='Acc.aspx' class='btn btn-primary'>Check Accessories</a>

            </div>

            <div class="cart-items" runat="server" id="cartItemsContainer">
                <!-- Cart items will be dynamically added here -->
            </div>

            <div class="text-center">
                <button class="go-back-button" onclick="goBack()"><a href="Default.aspx" style="text-decoration:none">Go Back</a></button>
                <button class="checkout-button"><a href="ThankYou.aspx" style="text-decoration:none">Proceed to Checkout</a></button>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
        function shirtSelected() {
            var shirtSelect = document.getElementById("shirtSelect");
            var shirtImage = document.getElementById("shirtImage");
            var shirtName = document.getElementById("shirtName");
            var shirtDescription = document.getElementById("shirtDescription");
            var shirtPrice = document.getElementById("shirtPrice");

            // Update the selected shirt information
            if (shirtSelect.value === "1") {
                shirtImage.src = "https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,q_auto:eco/6ee5fa81-be9c-4d0c-a48a-3d0db669c878/fc-barcelona-2022-23-stadium-home-dri-fit-football-shirt-kGdKhw.png";
                shirtName.innerText = "FCB kit";
                shirtDescription.innerText = "2020-2021";
                shirtPrice.innerText = "$45.99";
            } else if (shirtSelect.value === "2") {
                shirtImage.src = "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/27c8b8a65f45498980a0afbb00ce4318_9366/Real_Madrid_23-24_Home_Kit_Kids_White_IB0009_01_laydown.jpg";
                shirtName.innerText = "Real Madrid kit";
                shirtDescription.innerText = "2020-2021";
                shirtPrice.innerText = "$45.99";
            }
            else if (shirtSelect.value === "3") {
                shirtImage.src = "https://images.footballfanatics.com/chelsea/chelsea-home-stadium-shirt-2022-AC-13303269+u-dklq4cd4jeasz82oh4t0+v-75448bb9baf14628a8510e1d092c5434.jpg?_hv=2&w=900";
                shirtName.innerText = "Chelsea";
                shirtDescription.innerText = "2020-2021";
                shirtPrice.innerText = "$45.99";
            }
            // Add more else-if conditions for additional shirt options
        }

        function goBack() {
            window.history.back();
        }
    </script>
</body>
</html>
