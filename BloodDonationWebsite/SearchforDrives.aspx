<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchforDrives.aspx.cs" Inherits="BloodDonationWebsite.SearchforDrives" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Search for Blood Donation Drives</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        body {
            background-image: url('/images/homebg.jpg'); /* Replace with your GIF path */
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background-color: rgba(0,0,0,0.6); /* Optional: add a dark overlay */
            background-blend-mode: overlay; /* This will blend the GIF with a color overlay */
        }
         .header-section {
            background: linear-gradient(rgba(128, 0, 0, 0.2), darkred), url('/images/h4.jpg');
            height:400px;
            margin-top:40px;
            align-items:center;
            background-size: contain;
            background-position: center;
            color: white;
            text-align: center;
            padding: 100px 20px 60px;
            margin-top: 70px;
        }

        .header-section h1 {
            font-size: 2.5rem;
            color:white;
            margin-top:40px;
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        .header-section p {
            max-width: 800px;
            margin: 0 auto;
            font-size: 1.1rem;
            line-height: 1.6;
        }

        .container {
            width: 90%;
            max-width: 800px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
            margin: 30px auto;
            flex-grow: 1;
        }

        .recent-drives {
            background-color: white;
            padding: 50px 0;
        }

        .drives-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .drive-card {
            background-color: #f9f9f9;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
        }

        .drive-card:hover {
            transform: translateY(-10px);
        }

        .drive-card img {
            width: 100%;
            height: 250px;
            object-fit: cover;
        }

        .drive-card-content {
            padding: 15px;
        }

        .drive-card-content h3 {
            color: #a30000;
            margin-bottom: 10px;
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
   footer {
            width: 100%;
            margin-top: auto;
        }

.logo {
    color:white;
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
    color:  white;
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
        .container {
            width: 90%;
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
            margin: 20px auto;
        }
        
        h1 {
            color: #a30000;
            text-align: center;
            margin-bottom: 30px;
            font-size: 24px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .form-group {
            margin-bottom: 25px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #1d3557;
            font-size: 16px;
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
            outline: none;
            border-color: #e63946;
            box-shadow: 0 0 0 2px rgba(230, 57, 70, 0.2);
        }
        
        select.form-control {
            cursor: pointer;
            background-color: white;
        }
        
        .header-banner {
           
            width: 100%;
            padding: 20px;
            text-align: center;
            margin-bottom: 30px;
           
        }
        
        .header-banner h1 {
            color: white;
            margin: 0;
           
        }
        
        /* Keep original IDs for control binding but apply our new styles */
        #DropDownList1, #txtdrive, #txtlocation, #txtdate, #txttime {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
            transition: border-color 0.3s;
            height: auto;
        }
        
        #DropDownList1:focus, #txtdrive:focus, #txtlocation:focus, #txtdate:focus, #txttime:focus {
            outline: none;
            border-color: #e63946;
            box-shadow: 0 0 0 2px rgba(230, 57, 70, 0.2);
        }
        
        .blood-drop-icon {
            color: #e63946;
            font-size: 24px;
            margin-right: 10px;
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
 

    <!-- New Header Section -->
    <div class="header-section">
        <br /><br /><br />
        <h1 style="font-weight:700;text-transform:uppercase;font-size:55px;letter-spacing:3px;text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.6);">Find Blood Donation Drives</h1>
        <p>Discover upcoming blood donation events in your area. Your single donation can save up to three lives. Browse through our upcoming drives and make a difference today.</p>
    </div>

    <!-- Existing Container with Search Form -->
    <div class="container">
        <form id="form1" runat="server">
            <div class="form-group">
                <h1>SEARCH FOR A BLOOD DONATION DRIVE</h1>
    
                <label for="DropDownList1">SELECT A DRIVE</label>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="name" 
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="form-control">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:donationConnectionString3 %>" 
                    ProviderName="<%$ ConnectionStrings:donationConnectionString3.ProviderName %>" 
                    SelectCommand="SELECT * FROM [drive]">
                </asp:SqlDataSource>
            </div>
       
            <div class="form-group">
                <label for="txtdrive">LOCATION</label>
                <asp:TextBox ID="txtdrive" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="txtlocation">DRIVE NAME</label>
                <asp:TextBox ID="txtlocation" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="txtdate">DATE</label>
                <asp:TextBox ID="txtdate" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            
            <div class="form-group">
                <label for="txttime">TIME</label>
                <asp:TextBox ID="txttime" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
        </form>
    </div>

    <!-- New Recent Drives Section -->
    <section class="recent-drives">
        <div class="drives-grid">
            <div class="drive-card">
                <img src="\images\Screenshot 2025-03-25 115457.png" alt="Community Health Drive"/>
                <div class="drive-card-content">
                    <h3>Community Health Center Drive</h3>
                    <p>Annual blood donation event supporting local healthcare.</p>
                </div>
            </div>
            <div class="drive-card">
                <img src="/images/drive4.jpg" alt="University Campus Drive"/>
                <div class="drive-card-content">
                    <h3>University Campus Blood Drive</h3>
                    <p>Student-led initiative to increase blood donation awareness.</p>
                </div>
            </div>
            <div class="drive-card">
                <img src="/images/drive2.jpg" alt="Corporate Blood Donation"/>
                <div class="drive-card-content">
                    <h3>Corporate Wellness Drive</h3>
                    <p>Employees coming together to save lives through blood donation.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Existing Footer (unchanged from previous version) -->
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