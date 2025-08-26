<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Thankyou.aspx.cs" Inherits="BloodDonationWebsite.Thankyou" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Thank You</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-image: url('/images/homebg.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background-color: rgba(0,0,0,0.6);
            background-blend-mode: overlay;
        }

        .header-section {
            background: linear-gradient(rgba(128, 0, 0, 0.2), darkred), url('/images/h4.jpg');
            height: 400px;
            margin-top: 40px;
            align-items: center;
            background-size: contain;
            background-position: center;
            color: white;
            text-align: center;
            padding: 100px 20px 60px;
            margin-top: 70px;
        }

        .header-section h1 {
            font-weight: 700;
            text-transform: uppercase;
            font-size: 55px;
            letter-spacing: 3px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .navbar {
            background: linear-gradient(135deg, darkred, darkred, red);
            padding: 1rem 2rem;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            font-size: 18px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }

        .navbar-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .logo {
            color: white;
            font-size: 1.8rem;
            font-weight: bold;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.5rem;
            transition: transform 0.3s ease;
        }

        .nav-links {
            display: flex;
            gap: 1.5rem;
            font-size:15px;
            align-items: center;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .thank-you-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-grow: 1;
            padding: 20px;
        }

        .card {
            width: 100%;
            max-width: 800px;
            text-align: center;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 15px 35px rgba(0,0,0,0.2);
            transition: all 0.3s ease;
        }

        .card:hover {
            transform: translateY(-15px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.25);
        }

        .card-img-top {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        footer {
            background: linear-gradient(135deg, darkred, darkred, red);
            color: white;
            padding: 3rem 0 2rem;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .footer-links h3 {
            margin-bottom: 1rem;
            position: relative;
            padding-bottom: 0.5rem;
        }

        .footer-links h3::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 50px;
            height: 2px;
            background-color: white;
        }

        .footer-links ul {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .copyright {
            text-align: center;
            padding-top: 2rem;
            margin-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: white;
        }
    </style>
</head>
<body>
    <nav class="navbar">
        <div class="navbar-content">
            <a href="#" class="logo">
                <svg xmlns="http://www.w3.org/2000/svg" width="45" height="60" fill="currentColor" class="bi bi-droplet" viewBox="0 0 16 16">
                    <path fill-rule="evenodd" d="M7.21.8C7.69.295 8 0 8 0q.164.544.371 1.038c.812 1.946 2.073 3.35 3.197 4.6C12.878 7.096 14 8.345 14 10a6 6 0 0 1-12 0C2 6.668 5.58 2.517 7.21.8m.413 1.021A31 31 0 0 0 5.794 3.99c-.726.95-1.436 2.008-1.96 3.07C3.304 8.133 3 9.138 3 10a5 5 0 0 0 10 0c0-1.201-.796-2.157-2.181-3.7l-.03-.032C9.75 5.11 8.5 3.72 7.623 1.82z"/>
                    <path fill-rule="evenodd" d="M4.553 7.776c.82-1.641 1.717-2.753 2.093-3.13l.708.708c-.29.29-1.128 1.311-1.907 2.87z"/>
                </svg>
                <span>Drop4Life</span>
            </a>
            <div class="nav-links">
                <a href="Home.aspx">Home</a>
                <a href="AboutUs.aspx">About</a>
                <a href="Donate.aspx">Donate</a>
                <a href="SearchforDrives.aspx">Drives</a>
                <a href="Success Stories.aspx">Stories</a>
                <a href="Events.aspx">Events</a>
                <a href="ContactUs.aspx">Contact</a>
                <a href="Sign In.aspx">Sign In</a>
                <a href="Sign Up.aspx">Sign Up</a>
            </div>
        </div>
    </nav>

    <div class="header-section">
        <br /><br /><br />
        <h1>Thank You</h1>
        <p>Your single donation can save up to three lives. Thank you for your incredible act of kindness.</p>
    </div>

    <form id="form1" runat="server">
        <div class="thank-you-container">
            <div class="card">
                <img src="images/thankyou.jpg" class="card-img-top" alt="Thank You Image">
                <div class="card-body">
                    <h2 class="card-title">Your Donation Matters</h2>
                    <h4 class="card-text">Your kindness and generosity is going to save someone's life and make a person smile.</h4>
                    <a href="Home.aspx" class="btn btn-primary mt-3">Go back to Home</a>
                </div>
            </div>
        </div>
    </form>

    <footer>
        <div class="footer-container">
            <div class="footer-links">
                <a href="#" class="footer-logo">
                    <i class="fas fa-tint"></i> Drop4Life
                </a>
                <p>Making blood donation accessible, convenient, and life-saving since 2010.</p>
                <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>

            <div class="footer-links">
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Donation Process</a></li>
                    <li><a href="#">Find a Drive</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </div>

            <div class="footer-links">
                <h3>Resources</h3>
                <ul>
                    <li><a href="#">Donor Eligibility</a></li>
                    <li><a href="#">Blood Types</a></li>
                    <li><a href="#">FAQs</a></li>
                    <li><a href="#">Success Stories</a></li>
                    <li><a href="#">News & Updates</a></li>
                </ul>
            </div>

            <div class="footer-links">
                <h3>Contact</h3>
                <ul>
                    <li><i class="fas fa-map-marker-alt"></i> 123 Blood Drive Way, City, ST 12345</li>
                    <li><i class="fas fa-phone"></i> (555) 123-4567</li>
                    <li><i class="fas fa-envelope"></i> info@drop4life.org</li>
                </ul>
            </div>
        </div>

        <div class="copyright">
            <p>&copy; 2025 Drop4Life Blood Donation Organization. All Rights Reserved.</p>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
</body>
</html>