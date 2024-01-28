<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SportsEquipmentWebsite.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <style>
        body {
            background-image: url('https://wallpapercave.com/wp/cAO5uXj.jpg');
             background-repeat: no-repeat;
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
            color:cyan;
        }
       
        th{
            background-color: #4CAF50;
            color: white;
        }
        label,h1 {
            color:cyan;
        }
        a{
           display: inline-block;
        padding: 10px 20px;
        background-color: #4CAF50;
        color: #fff;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        text-align: center;
        text-decoration: none;
        cursor: pointer;
        transition: background-color 0.3s;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <h1>Login</h1>
            <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
            <label>First Name:</label>
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            <br /><br />
            <label>Last Name:</label>
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br /><br />
            <label>City:</label>
            <asp:TextBox ID="txtCity" runat="server"></asp:TextBox>
            <br /><br />
            <a href='Default.aspx' id="log" class='btn btn-primary'>Login</a>
            <br /><br />
            <table id="tblUserInfo" runat="server" visible="false">
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>City</th>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
