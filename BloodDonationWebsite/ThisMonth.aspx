
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Upcoming Blood Donation Events | Drop4Life</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <style>
        :root {
            --dark-red: #8B0000;
            --light-red: #B22222;
            --medium-red: #A52A2A;
            --accent-red: #FF4500;
            --white: #FFFFFF;
            --light-gray: #F5F5F5;
            --dark-gray: #333333;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
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

        body {
            background-color: var(--white);
            color: var(--dark-gray);
            line-height: 1.6;
        }

        header {
             background: linear-gradient(rgba(128, 0, 0, 0.2), darkred), url('/images/h4.jpg');
             background-size:contain;
             height:450px;
            color: var(--white);
            padding: 1rem 0;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            position: relative;
            z-index: 1;
        }

        .header-content {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
            text-align: center;
        }

        .navbar {
            background: linear-gradient(135deg, var(--dark-red) 0%, var(--light-red) 100%);
            padding: 1rem 2rem;
            position: sticky;
            width: 100%;
            top: 0;
            z-index: 1000;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .navbar-content {
            display: flex;
            justify-content: space-between;
            align-items: center;
            max-width: 1200px;
            margin: 0 auto;
        }

        .logo {
            color: var(--white);
            font-size: 1.8rem;
            font-weight: bold;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .nav-links {
            display: flex;
            gap: 1.5rem;
        }

        .nav-links a {
            color: var(--white);
            text-decoration: none;
            padding: 0.5rem 1rem;
            border-radius: 4px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .nav-links a:hover {
            background-color: rgba(255, 255, 255, 0.1);
            transform: translateY(-2px);
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 2rem;
        }

        .page-title {
            text-align: center;
            margin-bottom: 3rem;
            position: relative;
        }

        .page-title h1 {
            font-size: 2.5rem;
            color: var(--dark-red);
            margin-bottom: 1rem;
            position: relative;
            display: inline-block;
        }

        .page-title h1::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 100px;
            height: 4px;
            background-color: var(--accent-red);
            border-radius: 2px;
        }

        .page-subtitle {
            color: var(--dark-gray);
            font-size: 1.2rem;
            max-width: 800px;
            margin: 0 auto;
        }

        .filter-section {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin-bottom: 2rem;
            flex-wrap: wrap;
        }

        .filter-button {
            background-color: var(--white);
            border: 2px solid var(--dark-red);
            color: var(--dark-red);
            padding: 0.5rem 1.5rem;
            border-radius: 25px;
            cursor: pointer;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .filter-button:hover, .filter-button.active {
            background-color: var(--dark-red);
            color: var(--white);
        }

        .events-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(350px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .event-card {
            background-color: var(--white);
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            position: relative;
        }

        .event-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
        }

        .featured-tag {
            position: absolute;
            top: 20px;
            right: -35px;
            background-color: var(--accent-red);
            color: var(--white);
            padding: 0.5rem 2.5rem;
            transform: rotate(45deg);
            font-weight: bold;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            z-index: 10;
        }

        .event-image {
            height: 200px;
            position: relative;
            overflow: hidden;
        }

        .event-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
        }

        .event-card:hover .event-image img {
            transform: scale(1.1);
        }

        .event-date-badge {
            position: absolute;
            bottom: -25px;
            left: 20px;
            background-color: var(--dark-red);
            color: var(--white);
            padding: 0.5rem 1rem;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-width: 80px;
            z-index: 5;
        }

        .event-date-day {
            font-size: 1.5rem;
            font-weight: bold;
            line-height: 1;
        }

        .event-date-month {
            font-size: 0.9rem;
            text-transform: uppercase;
        }

        .event-content {
            padding: 2rem;
            padding-top: 2.5rem;
        }

        .event-title {
            color: var(--dark-red);
            margin-bottom: 0.5rem;
            font-size: 1.4rem;
        }

        .event-location {
            color: var(--dark-gray);
            display: flex;
            align-items: center;
            gap: 0.5rem;
            margin-bottom: 1rem;
            font-size: 0.9rem;
        }

        .event-description {
            color: var(--dark-gray);
            margin-bottom: 1.5rem;
            font-size: 0.95rem;
        }

        .event-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-top: 1px solid rgba(0, 0, 0, 0.1);
            padding-top: 1rem;
        }

        .event-time {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: var(--dark-gray);
            font-size: 0.9rem;
        }

        .event-signup {
            background-color: var(--dark-red);
            color: var(--white);
            padding: 0.5rem 1.5rem;
            border-radius: 25px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 4px 8px rgba(139, 0, 0, 0.2);
        }

        .event-signup:hover {
            background-color: var(--medium-red);
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(139, 0, 0, 0.3);
        }

        .load-more {
            display: block;
            margin: 3rem auto;
            padding: 1rem 2rem;
            background-color: transparent;
            border: 2px solid var(--dark-red);
            color: var(--dark-red);
            border-radius: 30px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            text-align: center;
            width: fit-content;
        }

        .load-more:hover {
            background-color: var(--dark-red);
            color: var(--white);
        }

        .faq-section {
            background-color: var(--light-gray);
            padding: 4rem 0;
            margin-top: 3rem;
        }

        .faq-container {
            max-width: 900px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .faq-title {
            text-align: center;
            color: var(--dark-red);
            margin-bottom: 2rem;
            font-size: 2rem;
        }

        .faq-item {
            margin-bottom: 1.5rem;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
            background-color: var(--white);
        }

        .faq-question {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 1.5rem;
            cursor: pointer;
            color: var(--dark-red);
            font-weight: 600;
        }

        .faq-answer {
            padding: 0 1.5rem 1.5rem 1.5rem;
            color: var(--dark-gray);
        }

        .calendar-section {
            text-align: center;
            margin: 4rem 0;
        }

        .calendar-title {
            color: var(--dark-red);
            margin-bottom: 1.5rem;
            font-size: 2rem;
        }

        .calendar-cta {
            background-color: var(--dark-red);
            color: var(--white);
            padding: 1rem 2rem;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            display: inline-block;
            margin-top: 1.5rem;
            transition: all 0.3s ease;
            box-shadow: 0 4px 8px rgba(139, 0, 0, 0.2);
        }

        .calendar-cta:hover {
            background-color: var(--medium-red);
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(139, 0, 0, 0.3);
        }

        .host-section {
            background: linear-gradient(135deg, var(--dark-red) 0%, var(--light-red) 100%);
            color: var(--white);
            padding: 4rem 0;
            text-align: center;
        }

        .host-container {
            max-width: 900px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .host-title {
            font-size: 2.5rem;
            margin-bottom: 1.5rem;
        }

        .host-description {
            margin-bottom: 2rem;
            max-width: 700px;
            margin-left: auto;
            margin-right: auto;
        }

        .host-cta {
            background-color: var(--white);
            color: var(--dark-red);
            padding: 1rem 2rem;
            border-radius: 30px;
            text-decoration: none;
            font-weight: 600;
            display: inline-block;
            transition: all 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .host-cta:hover {
            background-color: var(--light-gray);
            transform: translateY(-2px);
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }

        footer {
            background-color: var(--dark-gray);
            color: var(--white);
            padding: 3rem 0 2rem;
            width:100%;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 2rem;
        }

        .footer-logo {
            color: var(--white);
            font-size: 1.5rem;
            font-weight: bold;
            margin-bottom: 1rem;
            display: inline-block;
        }

        .footer-links h3 {
            color: var(--white);
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
            background-color: var(--accent-red);
        }

        .footer-links ul {
            list-style: none;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
        }

        .footer-links a {
            color: rgba(255, 255, 255, 0.8);
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: var(--white);
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
        }

        .social-links a {
            color: var(--white);
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
            color: rgba(255, 255, 255, 0.6);
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
    </style>
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
            <a href="RequestForBlood.aspx">Request</a>
            <a href="Events.aspx">Events</a>
            <a href="ContactUs.aspx">Contact</a>
            <a href="Home.aspx">Sign Out</a>
        </div>
    </div>
</nav>

        <header>
            <div class="header-content">
                <br /><br /><br /><br /><br /><br /><br /><br /><br />
 <h1 style="font-size:55px;text-transform:uppercase;letter-spacing:3px;font-weight:700;">Join Us in Saving Lives</h1>
                <p>Find blood donation events near you and make a difference today</p>
            </div>
        </header>

        <div class="container">
            <div class="page-title">
                <h1>This Month</h1>
                <p class="page-subtitle">Each donation can save up to three lives. Find an event near you and be someone's hero today.</p>
            </div>

            <div class="filter-section">
               <button class="filter-button"> <a href="Events.aspx">All Events</a></button>
               <button class="filter-button"> <a href="ThisWeek.aspx">This Week</a></button>
               <button class="filter-button"> <a href="ThisMonth.aspx">This Month</a></button>
            </div>
<div class="events-grid">
                <div class="event-card">
                    <div class="featured-tag">Featured</div>
                    <div class="event-image">
                        <img src="/images/t1.jpg" alt="Coastal Region Blood Donor Day" />
                        <div class="event-date-badge">
                            <span class="event-date-day">21</span>
                            <span class="event-date-month">Jul</span>
                        </div>
                    </div>
                    <div class="event-content">
                        <h3 class="event-title">Coastal Region Blood Donor Day</h3>
                        <div class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Monterey Bay Community Center, Main Hall</span>
                        </div>
                        <p class="event-description">Join our summer blood drive celebrating ocean conservation and community health. Free marine-themed gifts for donors and beach cleanup volunteers.</p>
                        <div class="event-footer">
                            <div class="event-time">
                                <i class="far fa-clock"></i>
                                <span>8:00 AM - 5:00 PM</span>
                            </div>
                            <a href="RegisterNow.aspx" class="event-signup">Register Now</a>
                        </div>
                    </div>
                </div>

                <div class="event-card">
                    <div class="event-image">
                        <img src="/images/t2.jpg" alt="Mountain Region Blood Drive" />
                        <div class="event-date-badge">
                            <span class="event-date-day">12</span>
                            <span class="event-date-month">Aug</span>
                        </div>
                    </div>
                    <div class="event-content">
                        <h3 class="event-title">Rocky Mountain Community Blood Drive</h3>
                        <div class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Boulder County Fairgrounds, Exhibition Hall</span>
                        </div>
                        <p class="event-description">High-altitude heroes unite! Donate blood and receive a commemorative hiking water bottle. Outdoor gear raffle for all participants.</p>
                        <div class="event-footer">
                            <div class="event-time">
                                <i class="far fa-clock"></i>
                                <span>9:00 AM - 4:00 PM</span>
                            </div>
                            <a href="RegisterNow.aspx" class="event-signup">Register Now</a>
                        </div>
                    </div>
                </div>

                <div class="event-card">
                    <div class="event-image">
                        <img src="/images/t3.jpg" alt="Desert Region Blood Challenge" />
                        <div class="event-date-badge">
                            <span class="event-date-day">15</span>
                            <span class="event-date-month">Sep</span>
                        </div>
                    </div>
                    <div class="event-content">
                        <h3 class="event-title">Desert Region Blood Challenge</h3>
                        <div class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Phoenix Convention Center, West Wing</span>
                        </div>
                        <p class="event-description">Southwest communities compete in our annual blood donation challenge. Schools and local businesses vie for the community spirit award.</p>
                        <div class="event-footer">
                            <div class="event-time">
                                <i class="far fa-clock"></i>
                                <span>7:00 AM - 6:00 PM</span>
                            </div>
                            <a href="RegisterNow.aspx" class="event-signup">Register Now</a>
                        </div>
                    </div>
                </div>

                <div class="event-card">
                    <div class="event-image">
                        <img src="/images/h4.jpg" alt="Alaskan Frontier Blood Drive" />
                        <div class="event-date-badge">
                            <span class="event-date-day">20</span>
                            <span class="event-date-month">Aug</span>
                        </div>
                    </div>
                    <div class="event-content">
                        <h3 class="event-title">Alaskan Frontier Blood Drive</h3>
                        <div class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Anchorage Community Center, Main Hall</span>
                        </div>
                        <p class="event-description">Remote communities unite! Mobile blood donation units traveling through Alaska's most challenging terrains. Special arctic survival kit for donors.</p>
                        <div class="event-footer">
                            <div class="event-time">
                                <i class="far fa-clock"></i>
                                <span>10:00 AM - 6:00 PM</span>
                            </div>
                            <a href="RegisterNow.aspx" class="event-signup">Register Now</a>
                        </div>
                    </div>
                </div>

                <div class="event-card">
                    <div class="event-image">
                        <img src="/images/drive.jpg" alt="Heartland Agricultural Community Drive" />
                        <div class="event-date-badge">
                            <span class="event-date-day">05</span>
                            <span class="event-date-month">Jul</span>
                        </div>
                    </div>
                    <div class="event-content">
                        <h3 class="event-title">Heartland Agricultural Community Drive</h3>
                        <div class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Midwest State Fairgrounds, Agricultural Building</span>
                        </div>
                        <p class="event-description">Celebrating rural communities and agricultural workers. Tractor parade, farm-to-table refreshments, and blood donation opportunities.</p>
                        <div class="event-footer">
                            <div class="event-time">
                                <i class="far fa-clock"></i>
                                <span>8:00 AM - 3:00 PM</span>
                            </div>
                            <a href="RegisterNow.aspx" class="event-signup">Register Now</a>
                        </div>
                    </div>
                </div>

                <div class="event-card">
                    <div class="event-image">
                        <img src="/images/blood4.jpg" alt="Southern Hospitality Blood Drive" />
                        <div class="event-date-badge">
                            <span class="event-date-day">18</span>
                            <span class="event-date-month">Aug</span>
                        </div>
                    </div>
                    <div class="event-content">
                        <h3 class="event-title">Southern Hospitality Blood Drive</h3>
                        <div class="event-location">
                            <i class="fas fa-map-marker-alt"></i>
                            <span>Charleston Civic Center, Grand Ballroom</span>
                        </div>
                        <p class="event-description">Southern charm meets lifesaving mission! BBQ and live music for donors. Celebrating community spirit and helping those in need.</p>
                        <div class="event-footer">
                            <div class="event-time">
                                <i class="far fa-clock"></i>
                                <span>9:00 AM - 5:00 PM</span>
                            </div>
                            <a href="RegisterNow.aspx" class="event-signup">Register Now</a>
                        </div>
                    </div>
                </div>
            </div>

          
        </div>

        <section class="faq-section">
            <div class="faq-container">
                <h2 class="faq-title">Frequently Asked Questions</h2>
                
                <div class="faq-item">
                    <div class="faq-question">
                        <span>What should I do before attending a blood drive?</span>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>Be well rested, eat a healthy meal, and drink plenty of fluids before donating. Bring a photo ID and list of medications you're taking. Wear comfortable clothing with sleeves that can be rolled up.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <div class="faq-question">
                        <span>How long does the donation process take?</span>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>The entire process takes about an hour from registration to refreshments. The actual blood donation only takes 8-10 minutes for whole blood donation.</p>
                    </div>
                </div>
                
                <div class="faq-item">
                    <div class="faq-question">
                        <span>Do I need to make an appointment?</span>
                        <i class="fas fa-chevron-down"></i>
                    </div>
                    <div class="faq-answer">
                        <p>While appointments are preferred and help us manage flow, many of our blood drives accept walk-ins. Check the specific event details for more information.</p>
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

        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
        </form>
    </body>
    </html>