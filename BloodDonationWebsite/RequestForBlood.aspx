<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drop4Life - Donate Blood, Save Lives</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        
        body {
            background-color: #f5f5f5;
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
    padding-left:0px;
    margin-left:0px;

}

.navbar-content {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
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
    color:black;
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
        .header {
            background-color: #8B0000;
            color: white;
            padding: 15px 0;
            position: sticky;
            top: 0;
            z-index: 100;
            padding-left:0px;
            margin-left:0px;
          
        }
          .scroll-container {
            width: 300px;
            height: 600px;
            overflow: hidden;
            position: relative;
            color:palevioletred;
            padding-left:0px;
        }

        .scroll-content {
            position: absolute;
            width: 100%;
            animation: scrollUp 40s linear infinite;
        }

        @keyframes scrollUp {
            from {
                transform: translateY(0);
            }
            to {
                transform: translateY(-100%);
            }
        }
        .container {
            width: 90%;
            max-width: 1200px;
            margin: 0 auto;
        }
        
        .header-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo {
            display: flex;
            align-items: center;
        }
        
        .logo img {
            width: 40px;
            margin-right: 10px;
        }
        
        .logo h1 {
            font-size: 24px;
            font-weight: 600;
        }
        
        .nav {
            display: flex;
            gap: 25px;
        }
        
        .nav a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }
        
        .nav a:hover {
            color: #FFD700;
        }
        
        .auth-buttons {
            display: flex;
            gap: 15px;
        }
        
        .btn {
            padding: 8px 20px;
            border-radius: 5px;
            cursor: pointer;
            font-weight: 500;
            transition: all 0.3s;
            border: none;
        }
        
        .btn-primary {
            background-color: #FF4500;
            color: white;
        }
        
        .btn-outline {
            background-color: transparent;
            border: 1px solid white;
            color: white;
        }
        
        .btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        
        .hero {
           background: linear-gradient(rgba(128, 0, 0, 0.2), darkred), url('/images/h4.jpg');
           margin-top:40px;
           background-size: contain;
           color: white;
           text-align: center;
           height:400px;
           padding: 150px 20px 100px;
        }
        
        .hero h2 {
                       font-size: 4rem;
           padding-top:10px;
margin-bottom: 1.5rem;
text-transform: uppercase;
letter-spacing: 3px;
font-weight: 700;
text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
        }
        
        .hero p {
            font-size: 20px;
            max-width: 700px;
            margin: 0 auto 30px;
            line-height: 1.6;
        }
        
        .main-content {
            padding: 50px 0;
            background-color: white;
        }
        
        .two-columns {
            display: flex;
            gap: 30px;
        }
        
        .form-column {
            flex: 2;
        }
        
        .donors-column {
            flex: 1;
            height:600px;
        }
        
        .section-title {
            font-size: 28px;
            margin-bottom: 30px;
            color: #333;
            position: relative;
            padding-bottom: 10px;
        }
        
        .section-title::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            width: 60px;
            height: 3px;
            background-color: #8B0000;
        }
        
        .form-group {
            margin-bottom: 20px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #333;
        }
        
        .form-group label span {
            color: #8B0000;
        }
        
        .form-control {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
        }
        
        .form-control:focus {
            border-color: #8B0000;
            outline: none;
        }
        
        .form-row {
            display: flex;
            gap: 20px;
            margin-bottom: 20px;
        }
        
        .form-row .form-group {
            flex: 1;
            margin-bottom: 0;
        }
        
        textarea.form-control {
            min-height: 120px;
            resize: vertical;
        }
        
        .donors-feed {
            background-color: #f9f9f9;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            max-height: 500px;
            overflow: hidden;
        }
        
        .donors-feed-title {
            font-size: 20px;
            margin-bottom: 20px;
            color: #8B0000;
            text-align: center;
            font-weight: 600;
        }
        
        .donor-list {
            overflow: hidden;
            height: 400px;
            position: relative;
        }
        
        .donor-card {
            background-color: white;
            border-radius: 5px;
            padding: 15px;
            margin-bottom: 15px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
            border-left: 4px solid transparent;
            transition: transform 0.3s;
            animation: slideIn 0.5s forwards;
            width:300px;

        }
        
        .donor-card:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
        }
        
        .blood-group {
            font-size: 18px;
            font-weight: 700;
            color: white;
            background-color: #8B0000;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 5px;
            margin-bottom: 10px;
        }
        
        .donor-name {
            font-weight: 600;
            color: #333;
            margin-bottom: 5px;
        }
        
        .donor-location {
            color: #666;
            font-size: 14px;
            display: flex;
            align-items: center;
            gap: 5px;
        }
        
        .donor-date {
            font-size: 12px;
            color: #999;
            margin-top: 8px;
        }
        
        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        @keyframes slideUp {
            from {
                transform: translateY(0);
            }
            to {
                transform: translateY(-100%);
            }
        }
                   footer {
        background: linear-gradient(135deg,darkred,darkred,red);
        color: var(--white);
        padding: 3rem 0 2rem;
        width:100%;
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
    </style>
</head>
<body>
    <!-- Header Section -->
    
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
            <a href="RequestForBlood.aspx">Request</a>
            <a href="Events.aspx">Events</a>
            <a href="ContactUs.aspx">Contact</a>
            <a href="Home.aspx">Sign Out</a>
        </div>
    </div>
     </nav>
     

    <!-- Hero Section -->
    <section class="hero">
        <div class="container">
            <h2>OUR MISSION</h2>
            <p>Every drop of blood can save a life. Our mission is to connect blood donors with those in need, ensuring that everyone has access to life-saving blood when they need it most.</p>
         
        </div>
    </section>

    <!-- Main Content -->
    <section class="main-content">
        <div class="container">
            <div class="two-columns">
                <div class="form-column">
                    <h2 class="section-title">Request for Blood</h2>
                    <form>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="patientName">Patient Name <span>*</span></label>
                                <input type="text" id="patientName" class="form-control" placeholder="Patient Name" required>
                            </div>
                            <div class="form-group">
                                <label for="doctorName">Doctor Name <span>*</span></label>
                                <input type="text" id="doctorName" class="form-control" placeholder="Doctor Name" required>
                            </div>
                            <div class="form-group">
                                <label for="bloodGroup">Blood Group <span>*</span></label>
                                <select id="bloodGroup" class="form-control" required>
                                    <option value="">--Select Blood Group--</option>
                                    <option value="A+">A+</option>
                                    <option value="A-">A-</option>
                                    <option value="B+">B+</option>
                                    <option value="B-">B-</option>
                                    <option value="AB+">AB+</option>
                                    <option value="AB-">AB-</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                </select>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="state">State</label>
                                <select id="state" class="form-control">
                                    <option value="">Select State</option>
                                    <option value="andhra">Andhra Pradesh</option>
                                    <option value="tamil">Tamil Nadu</option>
                                    <option value="karnataka">Karnataka</option>
                                    <option value="kerala">Kerala</option>
                                    <option value="maharashtra">Maharashtra</option>
                                </select>
                            </div>
                            
                            
                        </div>
                        <div class="form-group">
                            <label for="hospitalAddress">Hospital Name & Address <span>*</span></label>
                            <textarea id="hospitalAddress" class="form-control" placeholder="Enter hospital name and complete address" required></textarea>
                        </div>
                        <div class="form-row">
                            <div class="form-group">
                                <label for="contactNumber">Contact Number <span>*</span></label>
                                <input type="tel" id="contactNumber" class="form-control" placeholder="Contact Number" required>
                            </div>
                            <div class="form-group">
                                <label for="unitsRequired">Units Required <span>*</span></label>
                                <input type="number" id="unitsRequired" class="form-control" placeholder="Number of units" min="1" required>
                            </div>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit Request</button>
                    </form>
                </div>
                
                <div class="donors-column">
                    <div class="donors-feed">
                        <h3 class="donors-feed-title">Recent Donor Join</h3>
                        <div class="donor-list" id="donorList">
                            <!-- Donor cards will be dynamically added here -->
                            <div class="donors-column">
    
           <div class="scroll-container">
               <div class="scroll-content">
           
            <!-- Initial donor cards -->
            <div class="donor-card">
                <div class="blood-group">A+</div>
                <div class="donor-name">John Smith</div>
                <div class="donor-location">
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
                        <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
                    </svg>
                    New York, Manhattan
                </div>
                <div class="donor-date">15-Mar-2025</div>
            </div>
               <div class="donor-card">
           <div class="blood-group">O+</div>
          <div class="donor-name">Ravi Kumar</div>
         <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Nepal, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
        </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">Kevin Jones</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Bangalore, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">B+</div>
    <div class="donor-name">Vidhishaa Ostwal</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Bangalore, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">O+</div>
    <div class="donor-name">Sushant Singh</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Gujarat, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">B+</div>
    <div class="donor-name">Julie Michael</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Lucknow, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">A-</div>
    <div class="donor-name">Rakesh K</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Manipur, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">Kalpana Yadav</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Tamil Nadu, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">Pranay Vinod</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Bangalore, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">Leeroy Dasilva</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Kerala, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">Ruhaan Khan</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Mumbai, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
   </div>
               <div class="donor-card">
    <div class="blood-group">B+</div>
    <div class="donor-name">William Louis Stewart</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Canada, US
    </div>
    <div class="donor-date">15-Mar-2025</div>
   </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">John Smith</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        New York, Manhattan
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">John Smith</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        New York, Manhattan
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
    <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">Ruth J Philips</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Bangalore, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
   </div>
               <div class="donor-card">
    <div class="blood-group">B-</div>
    <div class="donor-name">Judy Michaels</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Nairobi, Kenya
    </div>
    <div class="donor-date">15-Mar-2025</div>
    </div>
               <div class="donor-card">
    <div class="blood-group">A+</div>
    <div class="donor-name">Hariharan Singh</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Punjab, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
</div><div class="donor-card">
    <div class="blood-group">A-</div>
    <div class="donor-name">Jacob M</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
        </svg>
        Punjab, India
    </div>
    <div class="donor-date">15-Mar-2025</div>
</div>
               <div class="donor-card">
            <div class="blood-group">B+</div>
         <div class="donor-name">Samhithaa V</div>
    <div class="donor-location">
        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
            <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
            <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
             </svg>
             Bangalore, India
               </div>
           <div class="donor-date">15-Mar-2025</div>
          </div>
            <div class="donor-card">
                <div class="blood-group">B-</div>
                <div class="donor-name">Emma Johnson</div>
                <div class="donor-location">
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
                        <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
                    </svg>
                    California, Los Angeles
                </div>
                <div class="donor-date">14-Mar-2025</div>
            </div>
            <div class="donor-card">
                <div class="blood-group">O+</div>
                <div class="donor-name">Michael Chen</div>
                <div class="donor-location">
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
                        <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
                    </svg>
                    Texas, Austin
                </div>
                <div class="donor-date">14-Mar-2025</div>
            </div>
            <div class="donor-card">
                <div class="blood-group">AB+</div>
                <div class="donor-name">Sarah Patel</div>
                <div class="donor-location">
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
                        <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
                    </svg>
                    Florida, Miami
                </div>
                <div class="donor-date">13-Mar-2025</div>
            </div>
            <div class="donor-card">
                <div class="blood-group">A-</div>
                <div class="donor-name">David Wilson</div>
                <div class="donor-location">
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M12 13C13.6569 13 15 11.6569 15 10C15 8.34315 13.6569 7 12 7C10.3431 7 9 8.34315 9 10C9 11.6569 10.3431 13 12 13Z" stroke="#666" stroke-width="2"/>
                        <path d="M12 22C16 18 20 14.4183 20 10C20 5.58172 16.4183 2 12 2C7.58172 2 4 5.58172 4 10C4 14.4183 8 18 12 22Z" stroke="#666" stroke-width="2"/>
                    </svg>
                    Washington, Seattle
                </div>
                <div class="donor-date">13-Mar-2025</div>
            </div>
               </div>
               </div>
              </div>

                             
                </div>
                      
                       
                    </div>
                
                </div>
               
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
        </footer>
        <script>
            // Wait for the DOM to fully load
            document.addEventListener('DOMContentLoaded', function () {
                // Get form element
                const form = document.querySelector('form');

                // Add submit event listener to the form
                form.addEventListener('submit', function (event) {
                    // Prevent the default form submission
                    event.preventDefault();

                    // Validate all form fields
                    if (validateForm()) {
                        // Show success popup
                        showSuccessPopup();
                        // Reset the form
                        form.reset();
                    }
                });

                // Validate the entire form
                function validateForm() {
                    let isValid = true;

                    // Required fields validation
                    const requiredFields = [
                        { id: 'patientName', message: 'Patient name is required' },
                        { id: 'doctorName', message: 'Doctor name is required' },
                        { id: 'bloodGroup', message: 'Please select a blood group' },
                        { id: 'hospitalAddress', message: 'Hospital address is required' },
                        { id: 'contactNumber', message: 'Contact number is required' },
                        { id: 'unitsRequired', message: 'Number of units is required' }
                    ];

                    // Remove all existing error messages
                    document.querySelectorAll('.error-message').forEach(el => el.remove());

                    // Check each required field
                    requiredFields.forEach(field => {
                        const element = document.getElementById(field.id);
                        const value = element.value.trim();

                        if (!value) {
                            isValid = false;
                            showError(element, field.message);
                        }
                    });

                    // Phone number validation
                    const contactNumber = document.getElementById('contactNumber');
                    const phonePattern = /^[0-9]{10}$/;
                    if (contactNumber.value.trim() && !phonePattern.test(contactNumber.value.trim())) {
                        isValid = false;
                        showError(contactNumber, 'Please enter a valid 10-digit phone number');
                    }

                    // Units required validation (must be a positive number)
                    const unitsRequired = document.getElementById('unitsRequired');
                    if (unitsRequired.value.trim() && (parseInt(unitsRequired.value) <= 0)) {
                        isValid = false;
                        showError(unitsRequired, 'Units must be a positive number');
                    }

                    return isValid;
                }

                // Show error message under the input field
                function showError(element, message) {
                    const errorDiv = document.createElement('div');
                    errorDiv.className = 'error-message';
                    errorDiv.style.color = 'red';
                    errorDiv.style.fontSize = '12px';
                    errorDiv.style.marginTop = '5px';
                    errorDiv.textContent = message;

                    element.parentNode.appendChild(errorDiv);
                    element.style.borderColor = 'red';

                    // Remove error styling when the user starts typing
                    element.addEventListener('input', function () {
                        element.style.borderColor = '';
                        const errorMessage = element.parentNode.querySelector('.error-message');
                        if (errorMessage) {
                            errorMessage.remove();
                        }
                    });
                }

                // Create and show success popup
                function showSuccessPopup() {
                    // Create popup elements
                    const popupOverlay = document.createElement('div');
                    popupOverlay.className = 'popup-overlay';
                    popupOverlay.style.position = 'fixed';
                    popupOverlay.style.top = '0';
                    popupOverlay.style.left = '0';
                    popupOverlay.style.width = '100%';
                    popupOverlay.style.height = '100%';
                    popupOverlay.style.backgroundColor = 'rgba(0, 0, 0, 0.5)';
                    popupOverlay.style.display = 'flex';
                    popupOverlay.style.justifyContent = 'center';
                    popupOverlay.style.alignItems = 'center';
                    popupOverlay.style.zIndex = '1000';

                    const popupContent = document.createElement('div');
                    popupContent.className = 'popup-content';
                    popupContent.style.backgroundColor = 'white';
                    popupContent.style.padding = '30px';
                    popupContent.style.borderRadius = '10px';
                    popupContent.style.boxShadow = '0 4px 8px rgba(0, 0, 0, 0.2)';
                    popupContent.style.textAlign = 'center';
                    popupContent.style.maxWidth = '400px';

                    // Success icon (droplet shape similar to site logo)
                    const successIcon = document.createElement('div');
                    successIcon.style.width = '60px';
                    successIcon.style.height = '60px';
                    successIcon.style.margin = '0 auto 20px';
                    successIcon.style.backgroundColor = '#e74c3c'; // Red color matching the blood donation theme
                    successIcon.style.borderRadius = '50% 50% 50% 0';
                    successIcon.style.transform = 'rotate(-45deg)';
                    successIcon.style.display = 'flex';
                    successIcon.style.justifyContent = 'center';
                    successIcon.style.alignItems = 'center';

                    // Checkmark inside the droplet
                    const checkmark = document.createElement('div');
                    checkmark.innerHTML = '✓';
                    checkmark.style.color = 'white';
                    checkmark.style.fontSize = '30px';
                    checkmark.style.transform = 'rotate(45deg)';
                    successIcon.appendChild(checkmark);

                    const title = document.createElement('h3');
                    title.textContent = 'Request Submitted!';
                    title.style.color = '#e74c3c';
                    title.style.marginBottom = '10px';

                    const message = document.createElement('p');
                    message.textContent = 'Your blood request has been submitted successfully. We\'ll get back to you soon.';
                    message.style.marginBottom = '20px';

                    const closeButton = document.createElement('button');
                    closeButton.textContent = 'OK';
                    closeButton.style.padding = '8px 20px';
                    closeButton.style.backgroundColor = '#e74c3c';
                    closeButton.style.color = 'white';
                    closeButton.style.border = 'none';
                    closeButton.style.borderRadius = '5px';
                    closeButton.style.cursor = 'pointer';
                    closeButton.style.fontSize = '16px';

                    // Close the popup when the button is clicked
                    closeButton.addEventListener('click', function () {
                        document.body.removeChild(popupOverlay);
                    });

                    // Append elements to the popup
                    popupContent.appendChild(successIcon);
                    popupContent.appendChild(title);
                    popupContent.appendChild(message);
                    popupContent.appendChild(closeButton);
                    popupOverlay.appendChild(popupContent);

                    // Add the popup to the body
                    document.body.appendChild(popupOverlay);

                    // Close popup when clicking outside of it
                    popupOverlay.addEventListener('click', function (event) {
                        if (event.target === popupOverlay) {
                            document.body.removeChild(popupOverlay);
                        }
                    });
                }
            });
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
        </body>
    </html>