```aspx
<%@ Page Language="C#" AutoEventWireup="true" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>MediCareConnect - Welcome</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background: #f4f9fc;
            color: #263238;
        }

        .header {
            background: linear-gradient(135deg, #1976d2, #00a8cc);
            color: white;
            padding: 25px 70px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
        }

        .tagline {
            font-size: 14px;
            margin-top: 5px;
        }

        .hero {
            text-align: center;
            padding: 55px 20px 35px;
        }

        .hero h1 {
            font-size: 38px;
            color: #1565c0;
            margin-bottom: 12px;
        }

        .hero p {
            font-size: 18px;
            color: #607d8b;
            max-width: 700px;
            margin: auto;
            line-height: 1.6;
        }

        .cards {
            display: flex;
            justify-content: center;
            gap: 25px;
            flex-wrap: wrap;
            padding: 30px 50px 60px;
        }

        .card {
            width: 270px;
            background: white;
            border-radius: 15px;
            padding: 30px 22px;
            text-align: center;
            box-shadow: 0 5px 18px rgba(0,0,0,0.10);
            transition: 0.3s;
        }

        .card:hover {
            transform: translateY(-8px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.15);
        }

        .icon {
            font-size: 45px;
            margin-bottom: 15px;
        }

        .card h2 {
            color: #1565c0;
            font-size: 21px;
        }

        .card p {
            color: #607d8b;
            line-height: 1.5;
            min-height: 65px;
        }

        .btn {
            display: inline-block;
            background: #1976d2;
            color: white;
            text-decoration: none;
            padding: 11px 22px;
            border-radius: 7px;
            margin-top: 10px;
            font-weight: bold;
        }

        .btn:hover {
            background: #0d47a1;
        }

        .donate-card {
            background: linear-gradient(135deg, #1976d2, #00a8cc);
            color: white;
        }

        .donate-card h2,
        .donate-card p {
            color: white;
        }

        .donate-card .btn {
            background: white;
            color: #1976d2;
        }

        .footer {
            background: #263238;
            color: white;
            text-align: center;
            padding: 18px;
            font-size: 14px;
        }
    </style>
</head>

<body>

<form id="form1" runat="server">

    <!-- HEADER -->

    <div class="header">

        <div>
            <div class="logo">❤️ MediCareConnect</div>
            <div class="tagline">
                Healthcare Donation Development System
            </div>
        </div>

        <div>
            Support Healthcare • Save Lives
        </div>

    </div>


    <!-- HERO SECTION -->

    <div class="hero">

        <h1>Welcome to MediCareConnect</h1>

        <p>
            Support healthcare development through donations.
            Your contribution helps provide medical camps,
            essential medicines and medical equipment to people in need.
        </p>

    </div>


    <!-- CARDS -->

    <div class="cards">

        <!-- Medical Camp -->

        <div class="card">

            <div class="icon">🏥</div>

            <h2>Medical Camp</h2>

            <p>
                Support free medical camps, health check-ups
                and basic healthcare services.
            </p>

            <a href="MedicalCamp.aspx" class="btn">
                View Details
            </a>

        </div>


        <!-- Medicine Support -->

        <div class="card">

            <div class="icon">💊</div>

            <h2>Medicine Support</h2>

            <p>
                Help provide essential medicines to patients
                who need financial support.
            </p>

            <a href="MedicineSupport.aspx" class="btn">
                View Details
            </a>

        </div>


        <!-- Medical Equipment -->

        <div class="card">

            <div class="icon">🩺</div>

            <h2>Medical Equipment</h2>

            <p>
                Support hospitals and healthcare centres
                with essential medical equipment.
            </p>

            <a href="MedicalEquipment.aspx" class="btn">
                View Details
            </a>

        </div>


        <!-- Donation -->

        <div class="card donate-card">

            <div class="icon">❤️</div>

            <h2>Make a Donation</h2>

            <p>
                Your donation can make a meaningful difference
                in someone's healthcare journey.
            </p>

            <a href="Donation.aspx" class="btn">
                Donate Now
            </a>

        </div>

    </div>


    <!-- FOOTER -->

    <div class="footer">

        © 2026 MediCareConnect |
        Healthcare Donation Development System

    </div>

</form>

</body>
</html>
```