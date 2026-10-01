<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ViewDonations.aspx.cs"
    Inherits="MediCareConnect.ViewDonations" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>View Donations</title>

    <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 90%;
            margin: 50px auto;
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 0 10px #ccc;
        }

        h1 {
            text-align: center;
            color: #222;
        }

        .grid {
            width: 100%;
            margin-top: 25px;
            border-collapse: collapse;
        }

        .grid th,
        .grid td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        .back {
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 16px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <div class="container">

        <h1>Donation History</h1>

        <asp:GridView
            ID="GridView1"
            runat="server"
            CssClass="grid"
            AutoGenerateColumns="true">
        </asp:GridView>

        <br />

        <asp:Button
            ID="btnBack"
            runat="server"
            Text="Back to Welcome"
            CssClass="back"
            PostBackUrl="welcome.aspx" />

    </div>

</form>

</body>
</html>