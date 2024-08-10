<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - ServeEase</title>
    <style>
        /* Reset styles and basic typography */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            color: #333;
            margin: 0;
            padding: 0;
        }
        
        /* Main heading style */
        .about-heading {
            background-color: #007bff; /* Changed background color to a vibrant blue */
            color: #fff;
            padding: 10px 20px; /* Reduced padding for a more compact header */
            border-radius: 5px; /* Slightly reduced border radius */
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
            text-transform: uppercase; /* Uppercase text for emphasis */
        }
        
        /* Container for content */
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff; /* Changed background color to white for better readability */
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        /* Adjusted heading and paragraph styles */
        h1 {
            color: #007bff; /* Matching main heading color for consistency */
            text-align: center; /* Centered main heading */
        }
        
        p {
            line-height: 1.6; /* Increased line height for better readability */
            text-align: justify; /* Justified text alignment for a cleaner look */
        }
        
        /* Background image section */
        .back-img {
            background: url("img/1img.png") center/cover no-repeat; /* Centered and cover-sized background image */
            height: 300px; /* Adjusted height for better proportion */
            margin-bottom: 20px;
        }
        
        /* Responsive adjustments */
        @media (max-width: 768px) {
            .container {
                padding: 15px; /* Reduced padding on smaller screens */
            }
            .back-img {
                height: 200px; /* Adjusted height for smaller screens */
            }
        }
    </style>
    <%@include file="all_component/all_css.jsp"%>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="container">
        <div class="about-heading">
            <h1>About Us</h1>
        </div>
        <p>ServeEase is your one-stop solution for everyday household chores including electricity, plumbing, cleaning, repairing, and managing. Our goal is to become your reliable directory with essential details and fair reviews, ensuring convenience and satisfaction.</p>
        
        <div class="back-img"></div> <!-- Adjusted class name to match CSS -->
        
        <p>We prioritize customer satisfaction and guarantee that our service providers deliver quality work with accountability. Our dedicated quality control department ensures timely service and welcomes feedback to continuously improve.</p>
    </div>
</body>
</html>
