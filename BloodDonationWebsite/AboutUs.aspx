<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Drop4Life</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

                   .navbar {
    background: linear-gradient(135deg, darkred,darkred,red);
    padding: 1rem 2rem;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
    font-size: a18px;
   
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

.logo:hover {
    transform: scale(1.05);
}

.logo svg {
    color:white;
    transition: fill 0.3s ease;
}

.logo:hover svg {
    fill: #fff;
    filter: drop-shadow(0 0 5px rgba(255, 255, 255, 0.5));
}

.nav-links {
    display: flex;
    gap: 1.5rem;
    align-items: center;
}

.nav-links a {
    color: white;
    text-decoration: none;
    padding: 0.5rem 1rem;
    border-radius: 4px;
    font-weight: 500;
    transition: all 0.3s ease;
    position: relative;
}

.nav-links a:hover {
    background-color: rgba(255, 255, 255, 0.1);
    color: #fff;
    transform: translateY(-2px);
}

.nav-links a::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    width: 0;
    height: 2px;
    background-color: #fff;
    transition: all 0.3s ease;
    transform: translateX(-50%);
}

.nav-links a:hover::after {
    width: 80%;
}

/* Special styling for Sign In and Sign Up buttons */
.nav-links a:nth-last-child(2),
.nav-links a:last-child {
    background-color: rgba(255, 255, 255, 0.2);
    border: 1px solid rgba(255, 255, 255, 0.3);
    padding: 0.5rem 1.2rem;
    border-radius: 20px;
    font-weight: 600;
}

.nav-links a:last-child {
    background-color: #fff;
    color: var(--primary);
}

.nav-links a:last-child:hover {
    background-color: #f8f9fa;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    transform: translateY(-2px);
}

/* Add responsive design for smaller screens */
@media (max-width: 768px) {
    .navbar {
        padding: 1rem;
    }
    
    .navbar-content {
        flex-direction: column;
        gap: 1rem;
    }
    
    .nav-links {
        flex-wrap: wrap;
        justify-content: center;
        gap: 0.5rem;
    }
    
    .nav-links a {
        font-size: 0.9rem;
        padding: 0.4rem 0.8rem;
    }
}

        /* About Us Hero Section */
        .about-hero {
            background: linear-gradient(rgba(128, 0, 0, 0.2), darkred), url('/images/h4.jpg');
            margin-top:40px;
            
             background-size: contain;
            color: white;
            text-align: center;
            height:500px;
            padding: 150px 20px 100px;
        }

        .about-hero h1 {
           font-size: 4rem;
           padding-top:100px;
margin-bottom: 1.5rem;
text-transform: uppercase;
letter-spacing: 3px;
font-weight: 700;
text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }

        .about-hero p {
            font-size: 1.2rem;
            max-width: 800px;
            margin: 0 auto 30px;
        }

        /* Impact Statistics */
        .impact-stats {
            display: flex;
            justify-content: center;
            background: white;
            padding: 30px 0;
            box-shadow: 0 -5px 15px rgba(0,0,0,0.1);
        }

        .stat-item {
            text-align: center;
            margin: 0 30px;
        }

        .stat-item h3 {
            color: darkred;
            font-size: 2.5rem;
            margin-bottom: 10px;
        }

        .stat-item p {
            color: #666;
        }

        /* Sections Styles */
        .section {
            max-width: 1200px;
            margin: 50px auto;
            padding: 0 20px;
        }

        .section-title {
            text-align: center;
            color: darkred;
            margin-bottom: 40px;
        }

        .mission-content {
            display: flex;
            align-items: center;
            gap: 30px;
        }

        .mission-text, .mission-image {
            flex: 1;
        }

        .mission-image img {
            width: 100%;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0,0,0,0.2);
        }

        /* Footer Styles (similar to previous design) */
        footer {
            background: linear-gradient(135deg, darkred, red);
            color: white;
            padding: 3rem 0 2rem;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 2rem;
            padding: 0 20px;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }

        .social-links a {
            color: white;
            background: rgba(255,255,255,0.1);
            padding: 10px;
            border-radius: 50%;
            transition: all 0.3s ease;
        }

        .social-links a:hover {
            background: rgba(255,255,255,0.2);
            transform: translateY(-3px);
        }

        .copyright {
            text-align: center;
            padding-top: 2rem;
            border-top: 1px solid rgba(255,255,255,0.1);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .about-hero h1 {
                font-size: 2.5rem;
            }

            .mission-content {
                flex-direction: column;
            }

            .footer-container {
                grid-template-columns: 1fr;
            }

            .impact-stats {
                flex-direction: column;
            }

            .stat-item {
                margin: 10px 0;
            }
        }
         .founders-section, .journey-section, .future-vision-section {
            max-width: 1200px;
            margin: 50px auto;
            padding: 0 20px;
        }

        .founders-grid {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            margin-top: 30px;
        }

        .founder-card {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .founder-card:hover {
            transform: translateY(-10px);
        }

        .founder-card img {
            width: 200px;
            height: 200px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 15px;
        }

        .timeline {
            position: relative;
            padding: 40px 0;
        }

        .timeline::before {
            content: '';
            position: absolute;
            top: 0;
            left: 50%;
            width: 2px;
            height: 100%;
            background-color: darkred;
        }

        .timeline-item {
            display: flex;
            justify-content: space-between;
            margin-bottom: 30px;
            position: relative;
        }

        .timeline-item::before {
            content: '';
            position: absolute;
            top: 50%;
            left: 50%;
            width: 30px;
            height: 30px;
            border-radius: 50%;
            background-color: darkred;
            transform: translate(-50%, -50%);
        }

        .timeline-left, .timeline-right {
            width: 45%;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        .timeline-left {
            text-align: right;
        }

        .timeline-right {
            text-align: left;
        }

        .future-goals {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 20px;
        }

        .future-goal-card {
            background-color: #f9f9f9;
            padding: 20px;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }

        @media (max-width: 768px) {
            .founders-grid {
                grid-template-columns: 1fr;
            }

            .timeline-item {
                flex-direction: column;
            }

            .timeline-left, .timeline-right {
                width: 100%;
                text-align: center !important;
                margin-bottom: 20px;
            }

            .timeline::before {
                left: 20px;
            }

            .timeline-item::before {
                left: 30px;
            }

            .future-goals {
                grid-template-columns: 1fr;
            }
        }
        /* Footer */
                footer {
            background: linear-gradient(135deg,darkred,darkred,red);
            color: var(--white);
            padding: 3rem 0 2rem;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            display: grid;
            color:white;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .footer-logo {
            color: white;
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 1rem;
            display: inline-block;
        }

        .footer-links h3 {
            color:white;
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
            background-color:white;
        }

        .footer-links ul {
            list-style: none;
            color:white;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
            color:white;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: white;
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
            color:white;
        }

        .social-links a {
            color: white;
            background-color: rgba(255, 255, 255, 0.1);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: all 0.3s ease;
        }
         .filter-button a {
        text-decoration: none; /* Removes the underline */
        color: white; /* Changes the text color to white */
        display: block; /* Makes the entire button clickable */
        padding: 10px 20px; /* Adds spacing for better appearance */
    }

    .filter-button {
        background-color: #d32f2f; /* Example button color (red) */
        border: none;
        padding: 10px 20px;
        cursor: pointer;
        border-radius: 5px;
        font-size: 16px;
        margin: 5px;
    }

    .filter-button:hover {
        background-color: #b71c1c; /* Darker shade for hover effect */
    }
        .social-links a:hover {
            background-color: var(--accent-red);
            transform: translateY(-3px);
        }

        .copyright {
            text-align: center;
            padding-top: 2rem;
            margin-top: 2rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: white;
        }

        @media (max-width: 768px) {
            .events-grid {
                grid-template-columns: 1fr;
            }

            .filter-section {
                flex-direction: column;
                align-items: center;
            }

            .event-card {
                max-width: 450px;
                margin: 0 auto;
            }

            .header-content {
                padding: 1rem;
            }

            .page-title h1 {
                font-size: 2rem;
            }
        }
        /* Updated Container Styles */
.container {
    width: 100%;  /* Full width container */
    max-width: 1500px;  /* Increased max-width */
    margin: 0 auto;  /* Center the container */
    padding: 0 2rem;  /* Maintain some side padding */
}

/* Adjust specific sections to use full width */
.stats-container,
.benefits-grid,
.video-section,
.donation-process,
.image-text-sections,
.eligibility-section,
.testimonials-section,
.faq-section {
    width: 100%;
    max-width: 1500px;
    margin: 0 auto;
    padding: 0 2rem;
}

/* Ensure responsive design */
@media (max-width: 1200px) {
    .container,
    .stats-container,
    .benefits-grid,
    .video-section,
    .donation-process,
    .image-text-sections,
    .eligibility-section,
    .testimonials-section,
    .faq-section {
        padding: 0 1rem;
    }
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
            <a href="ContactUs.aspx">Contact</a>
            <a href="Sign In.aspx">Sign In</a>
            <a href="Sign Up.aspx">Sign Up</a>
        </div>
    </div>
</nav>

    <!-- About Us Hero Section -->
    <section class="about-hero">
        <h1>About Us</h1>
        <p>Drop4Life is a passionate community dedicated to saving lives through blood donation. We believe that every drop counts and can make a significant difference in someone's life.</p>
    </section>

    <!-- Impact Statistics -->
    <section class="impact-stats">
        <div class="stat-item">
            <h3>10,000+</h3>
            <p>Donors</p>
        </div>
        <div class="stat-item">
            <h3>30,000+</h3>
            <p>Lives Saved</p>
        </div>
        <div class="stat-item">
            <h3>500+</h3>
            <p>Blood Drives</p>
        </div>
    </section>

    <!-- Mission Section -->
    <section class="section">
        <h2 class="section-title">Our Mission</h2>
        <div class="mission-content">
            <div class="mission-text">
                <p>At Drop4Life, our mission is to create a world where no one suffers from a lack of blood supply. We strive to make blood donation accessible, convenient, and a community-driven initiative. Every donation has the power to save up to three lives, and we're committed to bridging the gap between donors and those in critical need.</p>
            </div>
            <div class="mission-image">
                <img src="/images/mission.jpg" alt="Our Mission">
            </div>
        </div>
    </section>
    <section class="founders-section">
        <h2 class="section-title">Our Founders</h2>
        <div class="founders-grid">
            <div class="founder-card">
                <img src="/images/f1.png" alt="Emily Rodriguez">
                <h3>Emily Rodriguez</h3>
                <p>Founder & CEO</p>
                <p>A passionate healthcare professional with a vision to bridge critical blood supply gaps.</p>
            </div>
            <div class="founder-card">
                <img src="/images/f2.png" alt="Michael Chen">
                <h3>Michael Chen</h3>
                <p>Co-Founder & COO</p>
                <p>Tech innovator who transformed blood donation logistics through smart technology.</p>
            </div>
            <div class="founder-card">
                <img src="/images/f3.png" alt="Dr. Sarah Thompson">
                <h3>Dr. Sarah Thompson</h3>
                <p>Medical Director</p>
                <p>Renowned hematologist committed to improving blood donation accessibility.</p>
            </div>
        </div>
    </section>

    <!-- Organization Journey Section -->
    <section class="journey-section">
        <h2 class="section-title">Our Journey</h2>
        <div class="timeline">
            <div class="timeline-item">
                <div class="timeline-left">
                    <h3>2010: The Spark</h3>
                    <p>Drop4Life was born from a personal tragedy when Emily Rodriguez lost a close friend due to unavailable blood during an emergency.</p>
                </div>
                <div class="timeline-right">
                    <img src="/images/founders.jpeg" alt="2010 Founding Moment" style="width:100%; border-radius:10px;">
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-left">
                    <img src="/images/drive.jpg" alt="First Blood Drive" style="width:100%; border-radius:10px;">
                </div>
                <div class="timeline-right">
                    <h3>2012: First Major Blood Drive</h3>
                    <p>Organized our first city-wide blood donation campaign, collecting over 500 units and saving approximately 1,500 lives.</p>
                </div>
            </div>
            <div class="timeline-item">
                <div class="timeline-left">
                    <h3>2015: National Expansion</h3>
                    <p>Expanded operations across 12 states, developing a robust digital platform to connect donors with hospitals.</p>
                </div>
                <div class="timeline-right">
                    <img src="/images/expansion.jpg" alt="National Expansion" style="width:100%; border-radius:10px;">
                </div>
            </div>
        </div>
    </section>

    <!-- Impact and Beneficiaries -->
    <section class="section">
        <h2 class="section-title">Our Impact</h2>
        <div class="mission-content">
            <div class="mission-text">
                <h3>Lives Transformed</h3>
                <p>Since our inception, Drop4Life has directly and indirectly benefited over 150,000 individuals. Our donors have contributed to critical medical treatments, emergency surgeries, cancer therapies, and childbirth support across various healthcare settings.</p>
                <p>We've maintained a 99.8% safe donation record and have built partnerships with over 250 hospitals and medical centers worldwide.</p>
            </div>
            <div class="mission-image">
                <img src="/images/homebg.jpg" alt="Impact Visualization">
            </div>
        </div>
        </section>
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
    </footer>     <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
</body>
</html>