<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>ServeEase</title>
    <style>
      .about-heading {
            background-color: #000;
            text-color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #aeccfd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
        p {
            line-height: 1.5;
            margin-bottom: 15px;
        }
        .features {
            margin-bottom: 20px;
        }
        .feature {
            margin-bottom: 10px;
        }
        ul {
            list-style-type: disc;
            margin-left: 20px;
        }
    </style>
       <%@include file="all_component/all_css.jsp"%>
</head>
<body>
   <%@include file="all_component/navbar.jsp"%>
    <div class="container">
        <div class="about-heading">
        <h1 style="color:#fbfcfc">Welcome to ServeEase</h1>
        </div>
        <p>ServeEase is your go-to platform for accessing quality services at your fingertips. Whether you need home maintenance, appliance repair, or renovation services, ServeEase has got you covered!</p>
        
        <div class="features">
            <h2>Why Choose ServeEase?</h2>
            <div class="feature">
            <br>
                <h4>Quality Services</h4>
                <p>At ServeEase, we prioritize quality and ensure that you receive top-notch services from verified technicians.</p>
            </div>
            <div class="feature">
                <h4>Time-Saving</h4>
                <p>ServeEase saves you time by connecting you with skilled professionals quickly, eliminating the hassle of searching for reliable service providers.</p>
            </div>
            <div class="feature">
                <h4>New People in the City</h4>
                <p>If you're new to the city, ServeEase is the perfect companion for accessing essential services without any hassle, making your transition smoother.</p>
            </div>
            <div class="feature">
                <h4>Verified Technicians</h4>
                <p>We thoroughly verify all technicians and service providers on our platform to ensure your safety and satisfaction.</p>
            </div>
        </div>

        <p>Book  our services now and experience the convenience of ServeEase today!</p>
        
    </div>
</body>
</html>
