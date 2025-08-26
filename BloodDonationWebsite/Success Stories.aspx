<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Success Stories.aspx.cs" Inherits="BloodDonationWebsite.Success_Stories" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   

 
    <title>Success Stories - Drop4Life Donation Center</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        body {
            background-color: #f8f8f8;
            color: #333;
        }
        .hero-section {
    background: linear-gradient(rgba(128, 0, 0, 0.2), darkred), url('/images/h4.jpg');
    background-size: contain;
    margin-top:40px;
    background-position: center;
    height: 450px;
    display: flex;
    align-items: center;
    justify-content: center;
    text-align: center;
    color: white;
    padding: 0 2rem;
    margin-top: 80px;
    position: relative;
    overflow: hidden;
}

.hero-section::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    
    z-index: 1;
}

.hero-content {
    max-width: 800px;
    position: relative;
    z-index: 2;
    animation: fadeInUp 1s ease;
    margin-bottom:20px;
}

.hero-content h1 {
    font-size: 4rem;
    margin-bottom: 1.5rem;
    text-transform: uppercase;
    letter-spacing: 3px;
    font-weight: 700;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);
}

.hero-content p {
    font-size: 1.3rem;
    margin-bottom: 2rem;
    text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.6);
    max-width: 600px;
    margin-left: auto;
    margin-right: auto;
    
}

@keyframes fadeInUp {
    from {
        opacity: 0;
        transform: translateY(30px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
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
        .header {
            background-color: #8B0000; /* Dark red */
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            padding-top:100px;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .navbar {
            background-color: #6B0000; /* Darker red */
            padding: 15px 0;
        }

        .navbar ul {
            display: flex;
            justify-content: center;
            list-style-type: none;
        }

        .navbar li {
            margin: 0 20px;
        }

        .navbar a {
            color: white;
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s;
        }

        .navbar a:hover {
            color: #FFD700; /* Gold highlight */
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 40px 20px;
        }

        .page-title {
            text-align: center;
            margin-bottom: 60px;
            position: relative;
        }

        .page-title h1 {
            font-size: 36px;
            color: #8B0000;
            position: relative;
            display: inline-block;
        }

        .page-title h1:after {
            content: '';
            position: absolute;
            width: 60%;
            height: 3px;
            background-color: #8B0000;
            bottom: -10px;
            left: 20%;
        }

        .intro {
            text-align: center;
            max-width: 800px;
            margin: 0 auto 60px auto;
            line-height: 1.6;
            font-size: 18px;
            color: #555;
        }

        .success-story {
            display: flex;
            margin-bottom: 80px;
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .success-story:hover {
            transform: translateY(-5px);
        }

        .story-image {
            flex: 0 0 42%;
            position: relative;
            overflow: hidden;
        }

        .story-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s;
        }

        .success-story:hover .story-image img {
            transform: scale(1.05);
        }

        .story-content {
            flex: 0 0 60%;
            padding: 40px;
        }

        .story-content h2 {
            color: #8B0000;
            margin-bottom: 15px;
            font-size: 26px;
        }

        .story-metadata {
            display: flex;
            margin-bottom: 20px;
            font-size: 14px;
            color: #777;
        }

        .story-date, .story-location {
            margin-right: 20px;
            display: flex;
            align-items: center;
        }

        .icon {
            margin-right: 5px;
            color: #8B0000;
        }

        .story-content p {
            line-height: 1.7;
            margin-bottom: 20px;
            color: #555;
        }

        .quote {
            font-style: italic;
            border-left: 4px solid #8B0000;
            padding-left: 20px;
            margin: 30px 0;
            color: #8B0000;
            font-size: 18px;
        }

        .story-footer {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-top: 30px;
        }

        .share-buttons {
            display: flex;
        }

        .share-buttons a {
            background-color: #8B0000;
            color: white;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 10px;
            transition: background-color 0.3s;
        }

        .share-buttons a:hover {
            background-color: #6B0000;
        }

        .read-more {
            display: inline-block;
            background-color: #8B0000;
            color: white;
            padding: 10px 20px;
            border-radius: 4px;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .read-more:hover {
            background-color: #6B0000;
        }

        .reverse {
            flex-direction: row-reverse;
        }

        .impact-counter {
            background-color: #8B0000;
            color: white;
            padding: 60px 0;
            text-align: center;
            margin: 60px 0;
        }

        .impact-title {
            font-size: 32px;
            margin-bottom: 40px;
        }

        .impact-stats {
            display: flex;
            justify-content: space-around;
            max-width: 1000px;
            margin: 0 auto;
            flex-wrap: wrap;
        }

        .stat-item {
            margin: 20px;
            min-width: 200px;
        }

        .stat-number {
            font-size: 48px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .stat-label {
            font-size: 18px;
            opacity: 0.9;
        }

        .cta-section {
            background-color: white;
            padding: 60px 0;
            text-align: center;
            border-radius: 8px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            margin-bottom: 60px;
        }

        .cta-title {
            color: #8B0000;
            font-size: 32px;
            margin-bottom: 20px;
        }

        .cta-text {
            max-width: 700px;
            margin: 0 auto 30px auto;
            font-size: 18px;
            line-height: 1.6;
            color: #555;
        }

        .cta-button {
            display: inline-block;
            background-color: #8B0000;
            color: white;
            padding: 14px 30px;
            border-radius: 4px;
            text-decoration: none;
            font-size: 18px;
            font-weight: 500;
            transition: background-color 0.3s, transform 0.3s;
        }

        .cta-button:hover {
            background-color: #6B0000;
            transform: translateY(-3px);
        }

        .footer {
            background-color: #2C0000; /* Very dark red */
            color: white;
            padding: 40px 0;
            text-align: center;
            width:100%;
        }

        .footer-content {
           
            margin: 0 auto;
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            padding: 0 20px;
        }

        .footer-section {
            flex: 1;
            min-width: 250px;
            margin: 20px;
            text-align: left;
        }

        .footer-section h3 {
            margin-bottom: 20px;
            font-size: 20px;
            position: relative;
            padding-bottom: 10px;
        }

        .footer-section h3:after {
            content: '';
            position: absolute;
            width: 50px;
            height: 2px;
            background-color: white;
            bottom: 0;
            left: 0;
        }

        .footer-section ul {
            list-style: none;
        }

        .footer-section li {
            margin-bottom: 10px;
        }

        .footer-section a {
            color: #DDD;
            text-decoration: none;
            transition: color 0.3s;
        }

        .footer-section a:hover {
            color: white;
        }

        .social-icons {
            display: flex;
            margin-top: 20px;
        }

        .social-icons a {
            background-color: rgba(255, 255, 255, 0.1);
            margin-right: 10px;
            width: 36px;
            height: 36px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            transition: background-color 0.3s;
        }

        .social-icons a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .copyright {
            text-align: center;
            padding-top: 30px;
            margin-top: 30px;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            color: #AAA;
            font-size: 14px;
        }

        @media (max-width: 992px) {
            .success-story {
                flex-direction: column;
            }

            .story-image, .story-content {
                flex: 0 0 100%;
            }

            .story-image {
                height: 350px;
            }

            .impact-stats {
                flex-direction: column;
                align-items: center;
            }

            .footer-content {
                flex-direction: column;
                align-items: center;
            }

            .footer-section {
                text-align: center;
                margin-bottom: 40px;
            }

            .footer-section h3:after {
                left: 50%;
                transform: translateX(-50%);
            }

            .social-icons {
                justify-content: center;
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
    </style>
</head>
<body>
    <form id="form2" runat="server">
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
       
      
        <div class="hero-section">
    <div class="hero-content">
        <br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
        <h1>Success Stories</h1>
         <p>Every Drop Matters. Every Donor Makes a Difference.</p><br/>
    </div>
</div>

       <div class="container">
     <div class="page-title">
         <h1>Stories That Save Lives</h1>
     </div>
     <div class="intro">
         <p>Behind every blood donation is a story of hope, resilience, and compassion. We're honored to share the stories of both recipients whose lives were changed and the generous donors who made it possible. These stories remind us why every donation matters and the profound impact a simple act of giving can have.</p>
     </div>
     <div class="success-story">
         <div class="story-image">
             <img src="/images/emily6.jpg" alt="Emily and her family celebrating her recovery" width="400px" />
         </div>
         <div class="story-content">
             <h2>Emily's Journey: A Second Chance at Life</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> June 15, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> Seattle, WA
                 </div>
             </div>
             <p>When Emily Johnson was diagnosed with leukemia at just 12 years old, her family's world turned upside down. Her treatment required multiple blood transfusions over the course of two years, totaling more than 35 units of blood and platelets.</p>
             <p>"I never realized how important blood donation was until my daughter needed it to survive," says Emily's mother, Sarah. "Each bag that hung on her IV pole represented someone who took an hour out of their day to help a stranger."</p>
             <div class="quote">
                 "The blood transfusions gave me strength when I had none left. I'm here today because strangers decided to donate."
             </div>
             <p>Today, Emily is 17 and cancer-free. She's an honor roll student who dreams of becoming a pediatric oncologist to help children like herself. She and her family organize blood drives twice a year and have helped collect over 500 units of blood since Emily's recovery.</p>
             <div class="story-footer">
                 
                
             </div>
         </div>
     </div>
     <div class="success-story reverse">
         <div class="story-image">
             <img src="/images/mark3.jpg" alt="Mark donating blood at a local drive" />
         </div>
         <div class="story-content">
             <h2>Mark's Mission: 100 Donations and Counting</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> March 3, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> Boston, MA
                 </div>
             </div>
             <p>Mark Peterson started donating blood after his brother was severely injured in a car accident in 2008. What began as a one-time donation has turned into a lifelong commitment. This year, Mark celebrated his 100th donation.</p>
             <p>"People don't realize that regular donors are the backbone of the blood supply," Mark explains. "Emergencies don't wait for convenient times, so I make donating part of my regular routine."</p>
             <div class="quote">
                 "Each donation takes about an hour, but that hour can give someone else years of life. There's no better use of my time."
             </div>
             <p>As a universal O-negative donor, Mark's blood can be given to anyone in emergency situations. He now volunteers at blood drives, helping new donors feel comfortable and encouraging them to become regulars like himself.</p>
             <div class="story-footer">
                 
                
             </div>
         </div>
     </div>
     <div class="success-story">
         <div class="story-image">
             <img src="/images/sophia2.jpg" alt="Sophia during her recovery with medical team" />
         </div>
         <div class="story-content">
             <h2>Sophia's Survival: Blood Donors Saved My Life</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> September 22, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> Phoenix, AZ
                 </div>
             </div>
             <p>What should have been a routine childbirth turned into a fight for survival when Sophia Martinez experienced severe postpartum hemorrhaging. In just hours, doctors transfused 12 units of blood to save her life.</p>
             <p>"When I woke up in the ICU, the doctor told me that without those blood transfusions, I wouldn't have made it to see my daughter," Sophia recalls. "It's overwhelming to think about the strangers who helped save my life."</p>
             <div class="quote">
                 "Every time I look at my daughter, I'm reminded that blood donors gave me the chance to be her mother. That's a gift I can never fully repay."
             </div>
             <p>Now, Sophia hosts "New Mom" blood drives, specifically encouraging pregnant women's partners and family members to donate. Her initiative has inspired over 200 first-time donors in her community.</p>
             <div class="story-footer">
                
                
             </div>
         </div>
     </div>
     <div class="success-story reverse">
         <div class="story-image">
             <img src="/images/wll.jpg" alt="The Williams family at a blood drive" />
         </div>
         <div class="story-content">
             <h2>The Williams Family: A Legacy of Giving</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> July 8, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> Chicago, IL
                 </div>
             </div>
             <p>For the Williams family, blood donation is a multi-generational tradition spanning over 50 years. It began with Robert Williams in 1973 and has continued through his children and now his grandchildren.</p>
             <p>"My father always said that giving blood was the easiest way to be a hero," says Michael Williams, Robert's son. "When I turned 18, my first stop was the blood bank, and I've been donating every 56 days since then."</p>
             <div class="quote">
                 "Our family has collectively donated over 500 units of blood. We don't know whose lives we've saved, but knowing we've helped is enough."
             </div>
             <p>The Williams family now hosts an annual blood drive on Robert's birthday, bringing together dozens of donors from their community. Their story has inspired other families to start their own donation traditions.</p>
             <div class="story-footer">
                 
                
             </div>
         </div>
     </div>
     <div class="success-story">
         <div class="story-image">
             <img src="/images/glinn.jpg" alt="Dr. Lin with trauma patients" />
         </div>
         <div class="story-content">
             <h2>Dr. Lin's Perspective: The Vital Link</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> October 12, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> Houston, TX
                 </div>
             </div>
             <p>As a trauma surgeon at Houston Memorial Hospital, Dr. Grace Lin has witnessed countless lives saved by blood transfusions. After 15 years in the emergency department, she's become an advocate for regular blood donation.</p>
             <p>"The most heartbreaking moments in my career have been when we didn't have enough blood products for multiple trauma patients," Dr. Lin shares. "Every donation truly matters, especially rare blood types and platelets."</p>
             <div class="quote">
                 "When disaster strikes, it's the blood already on the shelves that saves lives. Donors who give regularly are the true heroes of emergency medicine."
             </div>
             <p>Dr. Lin now leads a hospital initiative encouraging medical professionals to donate regularly. Her program has increased staff donation rates by 75% and has become a model for other hospitals nationwide.</p>
             <div class="story-footer">
                 
             
             </div>
         </div>
     </div>
     <div class="success-story reverse">
         <div class="story-image">
             <img src="/images/men2.jpg" alt="Veterans at military blood drive" />
         </div>
         <div class="story-content">
             <h2>Veterans United: Service Beyond Uniform</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> May 29, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> San Diego, CA
                 </div>
             </div>
             <p>After serving together in the Marine Corps, James Cooper and Rafael Mendez found another way to continue their service: organizing blood drives specifically for military communities. Their firsthand battlefield experience showed them how critical blood supplies are.</p>
             <p>"On deployment, we saw how blood transfusions brought wounded soldiers back from the brink," James explains. "When we returned home, we wanted to keep that lifeline going."</p>
             <div class="quote">
                 "In combat, we protected each other. As veterans, we protect our communities by ensuring blood is available when it's needed most."
             </div>
             <p>Their "Veterans United Blood Drive" has expanded to 15 military bases across the country, collecting over 8,000 units of blood annually. Their initiative specifically targets rare blood types and has created a network of veteran donors who respond during national emergencies.</p>
             <div class="story-footer">
                
               
             </div>
         </div>
     </div>
     <div class="success-story">
         <div class="story-image">
             <img src="/images/man.jpg" alt="Miguel receiving platelets during treatment" />
         </div>
         <div class="story-content">
             <h2>Miguel's Marathon: Fighting Aplastic Anemia</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> August 5, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> Miami, FL
                 </div>
             </div>
             <p>At 24, marathon runner Miguel Ortiz was diagnosed with severe aplastic anemia, a rare condition where the body stops producing enough blood cells. His treatment required weekly platelet transfusions and regular blood transfusions for nearly a year.</p>
             <p>"As an athlete, I was used to pushing my body to its limits," Miguel says. "But this was different—I needed others to literally give part of themselves so I could survive."</p>
             <div class="quote">
                 "Each platelet donation took donors up to three hours. Strangers were spending more time helping me than most people spend with close friends."
             </div>
             <p>After his recovery, Miguel started "Finish Line Donations," where runners pledge to donate blood or platelets after completing races. The program has spread to running clubs in 23 states, highlighting that even elite athletes benefit from blood donation.</p>
             <div class="story-footer">
                
             </div>
         </div>
     </div>
     <div class="success-story reverse">
         <div class="story-image">
             <img src="/images/twins.jpg" alt="Lakisha with her twin daughters" />
         </div>
         <div class="story-content">
             <h2>Lakisha's Twins: A Double Miracle</h2>
             <div class="story-metadata">
                 <div class="story-date">
                     <span class="icon">📅</span> April 17, 2024
                 </div>
                 <div class="story-location">
                     <span class="icon">📍</span> Atlanta, GA
                 </div>
             </div>
             <p>When Lakisha Taylor delivered her twin daughters prematurely at 30 weeks, both infants required multiple transfusions of specially screened blood. Born weighing just under two pounds each, the tiny babies needed blood products to survive.</p>
             <p>"The neonatologist explained that premature babies often need blood from donors, but it has to be specially screened and processed," Lakisha recalls. "I had no idea there were donors who specifically gave blood for babies."</p>
             <div class="quote">
                 "My daughters received blood from eight different donors during their NICU stay. Eight strangers helped give my girls a fighting chance at life."
             </div>
             <p>Today, Amara and Zuri are thriving four-year-olds. Lakisha has become an advocate for minority blood donation, addressing the critical need for diverse blood donors to help patients with conditions like sickle cell anemia that primarily affect specific ethnic groups.</p>
             <div class="story-footer">
                 
             
             </div>
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
