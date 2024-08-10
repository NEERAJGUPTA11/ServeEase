<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - ServeEase</title>
    <style>
        /* Reset styles and basic typography */
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9; /* Light gray background */
            color: #333;
            margin: 0;
            padding: 0;
        }
        
        /* Main heading style */
        h1 {
            color: #007bff; /* Blue color for main headings */
            text-align: center;
            margin-top: 20px;
        }
        
        /* Container for content */
        .container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff; /* White background */
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        
        /* Form styling */
        form {
            margin-top: 20px;
        }
        
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555; /* Dark gray color for labels */
        }
        
        input[type="text"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }
        
        input[type="submit"] {
            background-color: #007bff; /* Blue button background */
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 5px;
            font-size: 14px;
        }
        
        input[type="submit"]:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
        
        /* Info section styling */
        .info {
            margin-top: 30px;
        }
        
        .info h2 {
            color: #af0f05; /* Reddish color for section headings */
            font-size: 20px;
            margin-bottom: 10px;
        }
        
        .info p {
            margin-bottom: 15px;
            font-size: 16px;
        }
        
        /* Social icons styling */
        .social-icons {
            margin-top: 20px;
            text-align: center;
        }
        
        .social-icons a {
            text-decoration: none;
            color: #007bff; /* Blue color for social icons */
            font-size: 24px;
            margin: 0 10px;
        }
        
        .social-icons a:hover {
            color: #0056b3; /* Darker blue on hover */
        }
    </style>
    <%@include file="all_component/all_css.jsp"%>
</head>
<body>
    <%@include file="all_component/navbar.jsp"%>
    <div class="container">
        <h1>Contact Us</h1>
        <p>Have a question or feedback? We'd love to hear from you!</p>
        
        <form action="#" method="post">
            <label for="name">Your Name:</label>
            <input type="text" id="name" name="name" required>
            
            <label for="email">Your Email:</label>
            <input type="email" id="email" name="email" required></br></br> <!-- Changed type to email for better validation -->
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            
            <input type="submit" value="Send Message">
        </form>
        
        <div class="info">
            <h2><i class="fa-solid fa-phone"></i> Contact Us</h2>
            <p>Contact No: +91-9123455670</p>
            <h2><i class="fa-solid fa-envelope"></i> Email Us</h2>
            <p>Email: ServeEase@gmail.com</p>
        </div>
        
        <div class="social-icons">
            <!-- Social icons -->
            <a href="https://www.facebook.com/"><i class="fab fa-facebook"></i></a>
            <a href="https://x.com/x."><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com/"><i class="fab fa-instagram"></i></a>
            <a href="https://www.linkedin.com/home"><i class="fab fa-linkedin"></i></a>
        </div>
    </div>
</body>
</html>
