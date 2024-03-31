<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <style>
        /* Custom Styles */
        body {
            background-color: #f8f9fa;
            color: #343a40;
        }

        /* Navigation Bar */
        .navbar {
            background-color: #007bff !important;
            border-bottom: 2px solid #0056b3;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        .navbar-brand {
            color: #fff;
            font-weight: bold;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        .navbar-nav .nav-link {
            color: #fff !important;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .navbar-nav .nav-link:hover {
            background-color: #0056b3;
        }

        /* Main Content */
        .jumbotron {
            background-color: #ffffff;
            border: 2px solid #007bff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }

        /* About Section */
        #about {
            background-color: #f8f9fa;
            border: 2px solid #dee2e6;
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
        }

        /* Features Section */
        #features {
            background-color: #ffffff;
            border: 2px solid #007bff;
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
        }

        .card {
            border: 2px solid #007bff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            transition: transform 0.3s;
        }

        .card:hover {
            transform: scale(1.02);
        }

        /* Query Section */
        #query {
            background-color: #f8f9fa;
            border: 2px solid #dee2e6;
            border-radius: 10px;
            padding: 10px;
            margin-top: 10px;
        }

        /* Bank Image Styling */
        .bank-image {
            width: 100%;
            max-width: 200px; /* Adjust the maximum width of the bank image */
            border: 2px solid #fff;
            border-radius: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            margin-top: 20px;
        }
    </style>
    <title>Banking Portal</title>
</head>
<body>

    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="#">Banking Portal</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="login">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="deposite"></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="widthraw"> </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#about"></a>
                </li>
            </ul>
        </div>
    </nav>

    <!-- Main Content -->
    <div class="container mt-4">

        <!-- Welcome Section -->
        <div class="jumbotron">
            <h1 class="display-4">Welcome to Your Banking Portal!</h1>
            <p class="lead">Manage your accounts and transactions with ease. Explore the various features offered by our banking platform.</p>
        </div>

        <!-- About Section -->
        <section id="about">
            <h2>About Us</h2>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel metus vel felis aliquet fermentum. Integer dapibus semper ex, non pharetra libero ultrices id. Quisque malesuada tortor sed varius pellentesque.</p>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam vel metus vel felis aliquet fermentum. Integer dapibus semper ex, non pharetra libero ultrices id. Quisque malesuada tortor sed varius pellentesque.</p>
        </section>

        <!-- Features Section -->
        <section id="features" class="mt-4">
            <h2>Key Features</h2>
            <div class="row">
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Secure Transactions</h5>
                            <p class="card-text">We prioritize the security of your transactions to ensure a safe banking experience.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">24/7 Support</h5>
                            <p class="card-text">Our customer support is available 24/7 to assist you with any inquiries or issues you may have.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">User-Friendly Interface</h5>
                            <p class="card-text">Our platform is designed to be user-friendly, making it easy for you to navigate and manage your accounts.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- Query Section -->
        <section id="query" class="mt-4">
            <h2>Have a Query?</h2>
            <p>Feel free to reach out to our support team for any assistance or questions you may have.</p>
            <!-- Add your query form or contact information here -->
        </section>

    </div>

    <!-- Bootstrap JS scripts -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

</body>
</html>
