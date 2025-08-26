<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register for Blood Donation Drive</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f8f8f8;
            color: #333;
            margin: 0;
            padding: 0;
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
        color:white;
    }
    
    .nav-links a {
        font-size: 0.9rem;
        padding: 0.4rem 0.8rem;
    }
}
        .header {
            background-color: #8B0000;
            color: white;
            padding: 20px 0;
            text-align: center;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            padding-top:100px;
        }
        
        .header h1 {
            margin: 0;
            font-size: 2.5rem;
        }
        
        .header p {
            margin: 10px 0 0;
            font-size: 1.2rem;
            opacity: 0.9;
        }
        
        .container {
            max-width: 1000px;
            margin: 40px auto;
            padding: 0 20px;
        }
        
        .form-container {
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0,0,0,0.1);
            overflow: hidden;
            display: flex;
        }
        
        .form-image {
            flex: 1;
            background-image: url('/images/register.png');
            background-size: cover;
            background-position: center;
            min-height: 400px;
        }
        
        .form-content {
            flex: 1;
            padding: 40px;
        }
        
        .section-title {
            color: #8B0000;
            margin-top: 0;
            margin-bottom: 25px;
            font-size: 1.8rem;
            position: relative;
            padding-bottom: 10px;
        }
        
        .section-title:after {
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
        
        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
        }
        
        .form-control {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
            font-size: 1rem;
            transition: border-color 0.3s;
        }
        
        .form-control:focus {
            border-color: #8B0000;
            outline: none;
        }
        
        select.form-control {
            appearance: none;
            background-image: url("data:image/svg+xml;charset=UTF-8,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 24 24' fill='none' stroke='%23555' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3e%3cpolyline points='6 9 12 15 18 9'%3e%3c/polyline%3e%3c/svg%3e");
            background-repeat: no-repeat;
            background-position: right 12px center;
            background-size: 16px;
        }
        
        .checkbox-group {
            display: flex;
            align-items: center;
        }
        
        .checkbox-group input {
            margin-right: 10px;
        }
        
        .btn {
            display: inline-block;
            background-color: #8B0000;
            color: white;
            border: none;
            padding: 14px 28px;
            font-size: 1rem;
            font-weight: 600;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
            text-align: center;
            margin-top: 15px;
        }
        
        .btn:hover {
            background-color: #6d0000;
        }
        
        .info-section {
            margin-top: 40px;
            text-align: center;
        }
        
        .info-cards {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
        }
        
        .info-card {
            flex: 1;
            background-color: white;
            padding: 25px;
            margin: 0 15px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
            text-align: center;
        }
        
        .info-card-icon {
            font-size: 2.5rem;
            color: #8B0000;
            margin-bottom: 20px;
        }
        
        .info-card h3 {
            color: #8B0000;
            margin-top: 0;
        }
        
        .footer {
            background-color: #8B0000;
            color: white;
            padding: 30px 0;
            text-align: center;
            margin-top: 60px;
        }
        
        @media (max-width: 768px) {
            .form-container {
                flex-direction: column;
            }
            
            .form-image {
                min-height: 200px;
            }
            
            .info-cards {
                flex-direction: column;
            }
            
            .info-card {
                margin: 15px 0;
            }
        }
        
        /* Blood drop animation */
        .blood-drop {
            position: relative;
            display: inline-block;
            margin-right: 10px;
            width: 30px;
            height: 30px;
        }
        
        .blood-drop::before {
            content: '';
            position: absolute;
            width: 16px;
            height: 16px;
            background-color: white;
            border-radius: 50% 50% 50% 0;
            transform: rotate(-45deg);
            top: 8px;
            left: 7px;
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
        /* Add these styles to your existing style section */

/* Error highlighting */
.form-control:invalid,
input:invalid,
select:invalid {
    border-color: #e74c3c !important;
}

/* Shake animation for invalid fields */
@keyframes shake {
    0%, 100% { transform: translateX(0); }
    10%, 30%, 50%, 70%, 90% { transform: translateX(-5px); }
    20%, 40%, 60%, 80% { transform: translateX(5px); }
}

.shake {
    animation: shake 0.5s;
}

/* Success state */
.form-control.valid {
    border-color: #2ecc71 !important;
}

/* Tooltip for validation messages */
.tooltip {
    position: relative;
    display: inline-block;
}

.tooltip .tooltiptext {
    visibility: hidden;
    width: 200px;
    background-color: #555;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 5px;
    position: absolute;
    z-index: 1;
    bottom: 125%;
    left: 50%;
    margin-left: -100px;
    opacity: 0;
    transition: opacity 0.3s;
}

.tooltip:hover .tooltiptext {
    visibility: visible;
    opacity: 1;
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
            <a href="SearchforDrives.aspx">Find Drives</a>
            <a href="Success Stories.aspx">Success Stories</a>
            <a href="RequestForBlood.aspx">Request</a>
            <a href="Events.aspx">Events</a>
            <a href="ContactUs.aspx">Contact</a>
            <a href="Home.aspx">Sign Out</a>
        </div>
    </div>
</nav>
        <!-- Header Section -->
        <div class="header">
            <div class="blood-drop"></div>
            <h1>Blood Donation Drive Registration</h1>
            <p>Your donation can save up to three lives!</p>
        </div>
        
        <div class="container">
            <!-- Registration Form -->
            <div class="form-container">
                <div class="form-image"></div>
                <div class="form-content">
                    <h2 class="section-title">Personal Information</h2>
                    
                    <div class="form-group">
                        <label for="fullName">Full Name</label>
                        <input type="text" id="fullName" class="form-control" runat="server" required />
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" class="form-control" runat="server" required />
                    </div>
                    
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="tel" id="phone" class="form-control" runat="server" required />
                    </div>
                    
                    <div class="form-group">
                        <label for="dob">Date of Birth</label>
                        <input type="date" id="dob" class="form-control" runat="server" required />
                    </div>
                    
                    <div class="form-group">
                        <label for="bloodGroup">Blood Group</label>
                        <select id="bloodGroup" class="form-control" runat="server" required>
                            <option value="">Select Your Blood Group</option>
                            <option value="A+">A+</option>
                            <option value="A-">A-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="O+">O+</option>
                            <option value="O-">O-</option>
                            <option value="Unknown">I don't know</option>
                        </select>
                    </div>
                    
                    <h2 class="section-title">Drive Information</h2>
                    
                    <div class="form-group">
                        <label for="location">Preferred Donation Location</label>
                        <select id="location" class="form-control" runat="server" required>
                            <option value="">Select Location</option>
                            <option value="central">Central Hospital</option>
                            <option value="north">North Community Center</option>
                            <option value="east">East Medical Plaza</option>
                            <option value="mobile">Mobile Blood Bank</option>
                        </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="date">Preferred Donation Date</label>
                        <input type="date" id="date" class="form-control" runat="server" required />
                    </div>
                    
                    <div class="form-group">
                        <label for="time">Preferred Time Slot</label>
                        <select id="time" class="form-control" runat="server" required>
                            <option value="">Select Time Slot</option>
                            <option value="morning1">9:00 AM - 10:00 AM</option>
                            <option value="morning2">10:00 AM - 11:00 AM</option>
                            <option value="noon">11:00 AM - 12:00 PM</option>
                            <option value="afternoon1">1:00 PM - 2:00 PM</option>
                            <option value="afternoon2">2:00 PM - 3:00 PM</option>
                            <option value="evening">3:00 PM - 4:00 PM</option>
                        </select>
                    </div>
                    
                    <div class="form-group checkbox-group">
                        <input type="checkbox" id="firstTime" runat="server" />
                        <label for="firstTime">This is my first time donating blood</label>
                    </div>
                    
                    <div class="form-group checkbox-group">
                        <input type="checkbox" id="termsAgreement" runat="server" required />
                        <label for="termsAgreement">I agree to the terms and conditions for blood donation</label>
                    </div>
                    
                <asp:LinkButton ID="lnkRegister" runat="server" CssClass="btn" PostBackUrl="~/Thankyou.aspx">
    <p style="color:white; margin:0;">Register Now</p>
</asp:LinkButton>
                </div>
            </div>
            
            <!-- Information Section -->
            <div class="info-section">
                <h2 class="section-title" style="display: inline-block;">Why Donate Blood?</h2>
                
                <div class="info-cards">
                    <div class="info-card">
                        <div class="info-card-icon">❤️</div>
                        <h3>Save Lives</h3>
                        <p>A single donation can save up to 3 lives and help countless patients in need.</p>
                    </div>
                    
                    <div class="info-card">
                        <div class="info-card-icon">🩺</div>
                        <h3>Health Check</h3>
                        <p>Get a mini health check-up including blood pressure, pulse, and hemoglobin levels.</p>
                    </div>
                    
                    <div class="info-card">
                        <div class="info-card-icon">⏱️</div>
                        <h3>Only 45 Minutes</h3>
                        <p>The donation process takes less than an hour from registration to refreshments.</p>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Footer -->
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
            // Add this script just before the closing </body> tag
            document.addEventListener('DOMContentLoaded', function () {
                const form = document.getElementById('form1');
                const registerButton = document.getElementById('<%= lnkRegister.ClientID %>');

    // Prevent default form submission
    registerButton.addEventListener('click', function (event) {
        if (!validateForm()) {
            event.preventDefault();
        }
    });

    function validateForm() {
        // Get all form fields
        const fullName = document.getElementById('<%= fullName.ClientID %>');
        const email = document.getElementById('<%= email.ClientID %>');
        const phone = document.getElementById('<%= phone.ClientID %>');
        const dob = document.getElementById('<%= dob.ClientID %>');
        const bloodGroup = document.getElementById('<%= bloodGroup.ClientID %>');
        const location = document.getElementById('<%= location.ClientID %>');
       
        const timeSlot = document.getElementById('<%= time.ClientID %>');
        const termsAgreement = document.getElementById('<%= termsAgreement.ClientID %>');

        // Reset validation styles
        const formElements = [fullName, email, phone, dob, bloodGroup, location, date, timeSlot, termsAgreement];
        formElements.forEach(element => {
            if (element) {
                element.style.borderColor = '#ddd';
            }
        });

        let isValid = true;
        let firstInvalidField = null;

        // Validate full name (non-empty and only contains letters, spaces, and some special characters)
        if (!fullName.value.trim() || !/^[a-zA-Z\s.',-]{2,50}$/.test(fullName.value.trim())) {
            highlightInvalid(fullName);
            if (!firstInvalidField) firstInvalidField = fullName;
            isValid = false;
        }

        // Validate email
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!email.value.trim() || !emailRegex.test(email.value.trim())) {
            highlightInvalid(email);
            if (!firstInvalidField) firstInvalidField = email;
            isValid = false;
        }

        // Validate phone (allow different formats)
        const phoneRegex = /^[\d\s()+-.]{10,15}$/;
        if (!phone.value.trim() || !phoneRegex.test(phone.value.trim())) {
            highlightInvalid(phone);
            if (!firstInvalidField) firstInvalidField = phone;
            isValid = false;
        }

        // Validate date of birth (must be 18+ years old)
        if (!dob.value) {
            highlightInvalid(dob);
            if (!firstInvalidField) firstInvalidField = dob;
            isValid = false;
        } else {
            const birthDate = new Date(dob.value);
            const today = new Date();
            let age = today.getFullYear() - birthDate.getFullYear();
            const monthDiff = today.getMonth() - birthDate.getMonth();

            if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
                age--;
            }

            if (age < 18 || age > 65) {
                highlightInvalid(dob);
                if (!firstInvalidField) firstInvalidField = dob;
                isValid = false;
                alert("You must be between 18 and 65 years old to donate blood.");
            }
        }

        // Validate blood group selection
        if (!bloodGroup.value) {
            highlightInvalid(bloodGroup);
            if (!firstInvalidField) firstInvalidField = bloodGroup;
            isValid = false;
        }

        // Validate location selection
        if (!location.value) {
            highlightInvalid(location);
            if (!firstInvalidField) firstInvalidField = location;
            isValid = false;
        }

        // Validate preferred date (must be a future date)
        if (!date.value) {
            highlightInvalid(date);
            if (!firstInvalidField) firstInvalidField = date;
            isValid = false;
        } else {
            const selectedDate = new Date(date.value);
            const today = new Date();
            today.setHours(0, 0, 0, 0);

            if (selectedDate < today) {
                highlightInvalid(date);
                if (!firstInvalidField) firstInvalidField = date;
                isValid = false;
                alert("Please select a future date for your donation.");
            }
        }

        // Validate time slot selection
        if (!timeSlot.value) {
            highlightInvalid(timeSlot);
            if (!firstInvalidField) firstInvalidField = timeSlot;
            isValid = false;
        }

        // Validate terms agreement
        if (!termsAgreement.checked) {
            highlightInvalid(termsAgreement);
            if (!firstInvalidField) firstInvalidField = termsAgreement;
            isValid = false;
        }

        // Focus on the first invalid field
        if (firstInvalidField) {
            firstInvalidField.focus();
        }

        return isValid;
    }

    function highlightInvalid(element) {
        element.style.borderColor = '#e74c3c';

        // Add shake animation for invalid field
        element.classList.add('shake');
        setTimeout(function () {
            element.classList.remove('shake');
        }, 500);
    }

    // Add keyup/change events to remove error highlighting when user starts fixing the input
    const inputs = form.querySelectorAll('input, select');
    inputs.forEach(input => {
        input.addEventListener('input', function () {
            this.style.borderColor = '#ddd';
        });
    });
});
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/js/all.min.js"></script>
    </form>
</body>
</html>