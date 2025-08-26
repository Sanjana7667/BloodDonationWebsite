<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="BloodDonationWebsite.Home" %>

<style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        :root {
            --primary: darkred;
            --secondary: #ff6b6b;
            --dark: #333;
            --light: #fff;
        }

        body {
            line-height: 1.6;
        }
.navbar {
    background: linear-gradient(135deg, darkred,darkred,red);
    padding: 1rem 2rem;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
    font-size: a20px;
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
    color: var(--light);
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
    fill: var(--light);
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
    color: var(--light);
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
       .hero {
    position: relative;
    height: 970px;
    display: flex;
    align-items: center;
    text-align: center;
    color: var(--light);
    padding: 2rem;
    background: url('images/doc.jpg') center/cover no-repeat;
    background-size:cover;
}

/* Add an overlay */
.hero::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: rgba(0, 0, 0, 0.4); /* Adjust opacity (0.4 for light transparency) */
    z-index: 1;
}




        .hero-content {
            background: url('images/blood6.jpg') center/cover no-repeat;
            z-index: 2; 
            margin: 0 auto;
            border: 5px solid white;
            border-radius:70px;
            width:600px;
            height:310px;
            padding: 4rem 2rem;  /* Add padding to give space for the text */
            position: relative;  /* For the overlay */
        }
        /* Add an overlay to make text more readable */
        .hero-content::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            
        }
        /* Make sure text appears above the overlay */
        .hero-content * {
             position: relative;
             z-index: 1;
        }

        .hero h1 {
            
            margin-bottom: 1rem;
            font-size:30px;
            font-family: 'Trebuchet MS';
        }

        .hero p {
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }

        .cta-button {
            display: inline-block;
            padding: 1rem 2rem;
            background: var(--primary);
            color: var(--light);
            text-decoration: none;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .cta-button:hover {
            background: var(--secondary);
        }

        .features {
            padding: 5rem 2rem;
            background: #f5f5f5;
        }

        .features-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
            max-width: 1600px;
            margin: 0 auto;
        }

        .feature-card {
            background: peachpuff;
            padding: 2rem;
            border-radius: 10px;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .feature-card:hover {
            transform: translateY(-5px);
        }

        .feature-icon {
            font-size: 2.5rem;
            color: var(--primary);
            margin-bottom: 1rem;
        }

        .stats {
            padding: 5rem 2rem;
            background-color:peachpuff;
            color: black;
            text-align: center;
        }

        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        .stat-item h3 {
            font-size: 2.5rem;
            margin-bottom: 0.5rem;
        }
        .video-container {
           position: relative;
           width: 100%;
           padding-bottom: 56.25%; /* 16:9 Aspect Ratio */
           height: 0;
           overflow: hidden;
           width:400px;
           height:400px;
        }

.video-container iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
}


        @media (max-width: 768px) {
            .hero h1 {
                font-size: 2.5rem;
            }
            
            .nav-links {
                display: none;
            }
        }
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

        /* Responsive adjustments */
        @media (max-width: 768px) {
            .hero-section, .gallery-section {
                padding: 2rem 1rem;
            }
            
            .page-title {
                font-size: 2rem;
            }
            
            .mission-statement {
                font-size: 1rem;
            }
            
            .nav-links {
                gap: 1rem;
            }
        }
        
        @media (max-width: 480px) {
            .page-title {
                font-size: 1.8rem;
            }
            
            .stat-number {
                font-size: 2rem;
            }
            
            .cta-title {
                font-size: 1.7rem;
            }
            
            .nav-links {
                display: none; /* For mobile, you might want to implement a hamburger menu */
            }
        }
        .container {
            display: flex;
            align-items: center;
            gap: 20px;
        }
         .blood-type-chart {
            flex: 1;
            overflow-x: auto;
        }
        .gif-container {
            flex: 0 0 500px;
            margin-right:150px;
            margin-left:120px;
        }
        .gif-container img {
            margin-left:70px;
            border-radius:10px;
            max-width: 100%;
            max-height: 400px;
            object-fit: contain;
        }
        table {
            margin-left:150px;
            width: 80%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: center;
        }
        thead tr {
            background-color: darkred;
            color: white;
        }
          .importance-card:hover {
            transform: scale(1.05); /* This will make the card slightly larger on hover */
        }
    </style>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:ital,wght@0,400..900;1,400..900&display=swap" rel="stylesheet">

</head>
<body>
    <form id="form1" runat="server">
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

    <section class="hero">
        
        <div class="hero-content">

            <h1 style="color:darkred;">Save Lives With Your Blood Donation</h1>
            
            <a href="Donate.aspx" class="cta-button"><b>DONATE</b></a>
         
        </div>
        
    
        
    </section>
         <marquee behavior="scroll" direction="left" scrollamount="9" style="background-color: #f0f0f0;z-index:100; padding: 12px; border-top: 2px solid darkred; border-bottom: 2px solid darkred;">
    <h1 style="color: darkred; margin: 0; font-size: 24px;">📢 Sign Up now to find out about upcoming blood donation drives and to request for blood! 📢</h1>
</marquee>
    <section class="features">
        <div class="features-grid">
            <div class="feature-card">
                <div class="feature-icon">❤️</div>
                <h3>Save Lives</h3>
                <p>One donation can save up to three lives and make an immediate impact in your community.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">🏥</div>
                <h3>Safe Process</h3>
                <p>Our donation process is completely safe and supervised by medical professionals.</p>
            </div>
            <div class="feature-card">
                <div class="feature-icon">⏰</div>
                <h3>Quick & Easy</h3>
                <p>The entire donation process takes less than an hour of your time.</p>
            </div>
        </div>
    </section>
         <section class="donation-importance" style="background-color: #f9f9f9; padding: 60px 20px; text-align: center;">
    
        <h2 style="color: darkred; margin-bottom: 30px;">Why Your Blood Donation Matters</h2>
        <div class="container">
        <div class="importance-grid" style="display: grid; grid-template-columns: repeat(3, 1fr); gap: 30px; max-width: 1200px; margin: 0 auto;">
            <div class="importance-card" style="background-color: white; padding: 25px; border-radius: 10px;transition:transform 0.3s ease; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
                <div class="importance-icon" style="font-size: 50px; margin-bottom: 15px;">🩸</div>
                <h3 style="color: darkred; margin-bottom: 15px;">Emergency Preparedness</h3>
                <p>Every blood donation helps hospitals maintain critical blood supplies for unexpected emergencies, surgeries, and trauma cases.</p>
            </div>
            
            <div class="importance-card" style="background-color: white; padding: 25px; border-radius: 10px;transition:transform 0.3s ease; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
                <div class="importance-icon" style="font-size: 50px; margin-bottom: 15px;">❤️</div>
                <h3 style="color: darkred; margin-bottom: 15px;">Medical Treatments</h3>
                <p>Patients with chronic illnesses like cancer, blood disorders, and those undergoing surgeries rely on consistent blood donations for survival.</p>
            </div>
            
            <div class="importance-card" style="background-color: white; padding: 25px; border-radius: 10px;transition:transform 0.3s ease; box-shadow: 0 4px 6px rgba(0,0,0,0.1);">
                <div class="importance-icon" style="font-size: 50px; margin-bottom: 15px;">🌍</div>
                <h3 style="color: darkred; margin-bottom: 15px;">Community Impact</h3>
                <p>One donation can potentially save up to three lives, creating a ripple effect of hope and support in your local community.</p>
            </div>
        </div>
         </div>
                 <div class="gif-container">
                <img src="/images/donate1.jpg" />
               <img src="/images/donate2.jpg" />
                     <img src="/images/donate3.jpg" />
                     <img src="/images/donate4.jpg" />
                     </div>
             
            
        
        <div class="call-to-action" style="margin-top: 40px;">
            <a href="Donate.aspx" class="cta-button" style="display: inline-block; background-color: darkred; color: white; padding: 15px 30px; text-decoration: none; border-radius: 5px; font-weight: bold; transition: background-color 0.3s;">
                Become a Lifesaver Today
            </a>
        </div>
   
</section><br /><br />
      <marquee scrollamount="17">
     <img src="images/blood4.jpg" width="500" height="300" />
      <img src="images/blood3.png" width="500" height="300" />
      <img src="images/homeblood.jpg" width="500" height="300" />
      <img src="images/smile3.jpg" width="500" height="300" />
     <img src="images/smile.jpg" width="500" height="300" />
     <img src="images/smile4.jpg" width="500" height="300" />
      <img src="images/blood4.jpg" width="500" height="300" />
     <img src="images/blood3.png" width="500" height="300" />
     <img src="images/homeblood.jpg" width="500" height="300" />
     <img src="images/smile3.jpg" width="500" height="300" />
     <img src="images/smile.jpg" width="500" height="300" />
     <img src="images/smile4.jpg" width="500" height="300" />
      <img src="images/blood4.jpg" width="500" height="300" />
     <img src="images/blood3.png" width="500" height="300" />
     <img src="images/homeblood.jpg" width="500" height="300" />
     <img src="images/smile3.jpg" width="500" height="300" />
     <img src="images/smile.jpg" width="500" height="300" />
     <img src="images/smile4.jpg" width="500" height="300" />
 </marquee>
    <section class="stats">
        <div class="stats-grid">
            <div class="stat-item">
                <h3 id="donorsCount">0</h3>
                <p>Active Donors</p>
            </div>
            <div class="stat-item">
                <h3 id="donationsCount">0</h3>
                <p>Total Donations</p>
            </div>
            <div class="stat-item">
                <h3 id="livesCount">0</h3>
                <p>Lives Saved</p>
            </div>
        </div>
    </section>
    
    <script>
        // Animated counter function
        function animateCounter(element, target, duration = 2000) {
            let start = 0;
            const increment = target / (duration / 16);

            function updateCount() {
                start += increment;
                if (start < target) {
                    element.textContent = Math.floor(start);
                    requestAnimationFrame(updateCount);
                } else {
                    element.textContent = target;
                }
            }

            updateCount();
        }

        // Intersection Observer for stats animation
        //Intersections trigger animations when elements become visible
        const observer = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    animateCounter(document.getElementById('donorsCount'), 5000);
                    animateCounter(document.getElementById('donationsCount'), 15000);
                    animateCounter(document.getElementById('livesCount'), 45000);
                    observer.unobserve(entry.target);
                }
            });
        }, { threshold: 0.5 });

        // Observe the stats section
        observer.observe(document.querySelector('.stats'));

        // Smooth scrolling for navigation links
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                e.preventDefault();
                const target = document.querySelector(this.getAttribute('href'));
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth'
                    });
                }
            });
        });
        
    </script><br /><br />
      <section class="blood-type-section">
        <h2 style="text-align: center; color: darkred; margin-bottom: 30px;">Blood Type Donation Compatibility</h2>
        <div class="container">
            <div class="blood-type-chart">
                <table>
                    <thead>
                        <tr>
                            <th>Blood Type</th>
                            <th>Can Donate To</th>
                            <th>Can Receive From</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>A+</td>
                            <td>A+, AB+</td>
                            <td>A+, A-, O+, O-</td>
                        </tr>
                        <tr>
                            <td>A-</td>
                            <td>A+, A-, AB+, AB-</td>
                            <td>A-, O-</td>
                        </tr>
                        <tr>
                            <td>B+</td>
                            <td>B+, AB+</td>
                            <td>B+, B-, O+, O-</td>
                        </tr>
                        <tr>
                            <td>B-</td>
                            <td>B+, B-, AB+, AB-</td>
                            <td>B-, O-</td>
                        </tr>
                        <tr>
                            <td>AB+</td>
                            <td>AB+</td>
                            <td>All Blood Types</td>
                        </tr>
                        <tr>
                            <td>AB-</td>
                            <td>AB+, AB-</td>
                            <td>A-, B-, AB-, O-</td>
                        </tr>
                        <tr>
                            <td>O+</td>
                            <td>A+, B+, AB+, O+</td>
                            <td>O+, O-</td>
                        </tr>
                        <tr>
                            <td>O-</td>
                            <td>All Blood Types</td>
                            <td>O-</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="gif-container">
                <img src="https://media3.giphy.com/media/v1.Y2lkPTc5MGI3NjExZjZzbmI2M244azA4cmQwMmJ6eGMyOHJkYzN2amZoZDBzOWtyYmV5bCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9Zw/l4KifuM5FMAYEXc6Q/giphy.gif" alt="Donation Moment">
            </div>
        </div>
    </section>
 
  

       <center><img src="images/homebg.jpg" width="1000" height="400"/></center>
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
    </form>
</body>
</html>