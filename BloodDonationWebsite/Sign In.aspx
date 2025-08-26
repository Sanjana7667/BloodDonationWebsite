<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign In.aspx.cs" Inherits="BloodDonationWebsite.Sign_In" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign In - Blood Donation Website</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #e74c3c;
            --secondary-color: #c0392b;
            --accent-color: #3498db;
            --light-color: #f9f9f9;
            --dark-color: #333;
            --error-color: #e74c3c;
            --success-color: #2ecc71;
            --shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        * {
            box-sizing: border-box;
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
    }
    
    .nav-links a {
        font-size: 0.9rem;
        padding: 0.4rem 0.8rem;
    }
}
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-image: url('images/bk1.jpg');
            background-size:cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
            padding-top:100px;
        }

        .signin-container {
            background-color: white;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            padding: 40px 30px;
            width: 100%;
            max-width: 550px;
            position: relative;
            overflow: hidden;
        }

        .signin-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 8px;
            background: linear-gradient(to right, var(--primary-color), var(--accent-color));
        }

        .signin-heading {
            margin-bottom: 35px;
            text-align: center;
            position: relative;
        }
        .signin-heading .fas{
            color:darkred;
        }

        h2 {
            color: darkred;
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .signin-heading::after {
            content: '';
            display: block;
            width: 60px;
            height: 4px;
            background-color: var(--primary-color);
            margin: 12px auto 0;
            border-radius: 2px;
        }

        .signin-tagline {
            color: #666;
            font-size: 16px;
            margin-top: 10px;
        }

        .form-group {
            margin-bottom: 25px;
            position: relative;
        }

        label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
            color: #555;
            font-size: 15px;
        }

        .input-icon-wrapper {
            position: relative;
        }

        .input-icon {
            position: absolute;
            left: 12px;
            top: 50%;
            transform: translateY(-50%);
            color: darkred;
        }

        input[type="text"], 
        input[type="email"], 
        input[type="password"] {
            width: 100%;
            padding: 12px 12px 12px 40px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 15px;
            transition: all 0.3s ease;
            background-color: #f9f9f9;
        }

        input[type="text"]:focus, 
        input[type="email"]:focus, 
        input[type="password"]:focus {
            border-color: var(--accent-color);
            outline: none;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
            background-color: white;
        }

        .password-wrapper {
            position: relative;
        }

        .toggle-password {
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);
            cursor: pointer;
            color: #777;
            background: none;
            border: none;
            font-size: 16px;
            transition: color 0.3s ease;
        }

        .toggle-password:hover {
            color: var(--accent-color);
        }

        .btn {
            width: 100%;
            padding: 14px;
            background: linear-gradient(to right, var(--primary-color), var(--secondary-color));
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 6px rgba(231, 76, 60, 0.2);
            margin-top: 10px;
            text-transform: uppercase;
            letter-spacing: 0.5px;
            position: relative;
            overflow: hidden;
        }

        .btn:hover {
            background: linear-gradient(to right, var(--secondary-color), var(--primary-color));
            box-shadow: 0 6px 8px rgba(231, 76, 60, 0.3);
            transform: translateY(-2px);
        }

        .btn:active {
            transform: translateY(0);
            box-shadow: 0 2px 4px rgba(231, 76, 60, 0.2);
        }

        .btn::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(120deg, transparent, rgba(255, 255, 255, 0.2), transparent);
            transition: 0.5s;
        }

        .btn:hover::before {
            left: 100%;
        }

        .btn.loading {
            pointer-events: none;
        }

        .btn.loading::after {
            content: '';
            position: absolute;
            width: 20px;
            height: 20px;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            border: 2px solid #fff;
            border-radius: 50%;
            border-top-color: transparent;
            animation: rotate 0.8s linear infinite;
        }

        @keyframes rotate {
            to {
                transform: translate(-50%, -50%) rotate(360deg);
            }
        }

        .signin-footer {
            text-align: center;
            margin-top: 25px;
            font-size: 14px;
            color: #666;
        }

        .signin-footer a {
            color: var(--primary-color);
            text-decoration: none;
            font-weight: 500;
            transition: color 0.3s ease;
        }
        .form-group .fa-eye-slash{
            color:darkred;
        }
        .signin-footer a:hover {
            color: var(--secondary-color);
            text-decoration: underline;
        }

        .blood-icon {
            color: var(--primary-color);
            font-size: 32px;
            margin-bottom: 15px;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(10px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        .signin-container {
            animation: fadeIn 0.5s ease forwards;
        }

        .form-group {
            opacity: 0;
            animation: fadeIn 0.5s ease forwards;
        }

        .form-group:nth-child(1) {
            animation-delay: 0.1s;
        }

        .form-group:nth-child(2) {
            animation-delay: 0.2s;
        }

        .btn {
            opacity: 0;
            animation: fadeIn 0.5s ease forwards;
            animation-delay: 0.3s;
        }

        .signin-footer {
            opacity: 0;
            animation: fadeIn 0.5s ease forwards;
            animation-delay: 0.4s;
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
    <form id="form1" runat="server" class="signin-container">
               
        <div class="signin-heading">
            <i class="fas fa-tint blood-icon"></i>
            <h2>Sign In</h2>
            <div class="signin-tagline">Welcome back to our blood donation community</div>
        </div>
        
        <div class="form-group">
            <label for="txtEmail">Email Address</label>
            <div class="input-icon-wrapper">
                <i class="fas fa-envelope input-icon"></i>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Enter your email" CssClass="input-field"></asp:TextBox>
            </div>
        </div>
        
        <div class="form-group">
            <label for="txtPassword">Password</label>
            <div class="password-wrapper input-icon-wrapper">
                <i class="fas fa-lock input-icon"></i>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Enter your password" CssClass="input-field"></asp:TextBox>
                <i id="togglePassword" class="fas fa-eye-slash toggle-password"></i>
            </div>
        </div>
        
        <asp:Button ID="Button1" runat="server" CssClass="btn" OnClick="Button1_Click" Text="Sign In" />
        
        <div class="signin-footer">
            Don't have an account? <a href="Sign Up.aspx">Sign Up</a>
        </div>
    </form>

    <script type="text/javascript">
        // Password toggle functionality
        const togglePassword = document.querySelector('#togglePassword');
        const password = document.querySelector('#<%=txtPassword.ClientID%>');

        togglePassword.addEventListener('click', function (e) {
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);
            this.classList.toggle('fa-eye');
            this.classList.toggle('fa-eye-slash');
        });

        
        // Add this script at the bottom of your HTML file, before the closing </body> tag
        document.addEventListener('DOMContentLoaded', function () {
            const contactForm = document.querySelector('.contact-form form');

            contactForm.addEventListener('submit', function (event) {
                event.preventDefault(); // Prevent the default form submission

                // Get form fields
                const name = document.getElementById('name');
                const email = document.getElementById('email');
                const message = document.getElementById('message');

                // Simple validation
                let isValid = true;

                if (name.value.trim() === '') {
                    isValid = false;
                    highlightField(name);
                } else {
                    resetField(name);
                }

                if (email.value.trim() === '' || !isValidEmail(email.value)) {
                    isValid = false;
                    highlightField(email);
                } else {
                    resetField(email);
                }

                if (message.value.trim() === '') {
                    isValid = false;
                    highlightField(message);
                } else {
                    resetField(message);
                }

                // If all validations pass, show success message
                if (isValid) {
                    showSuccessMessage();
                    contactForm.reset(); // Clear the form
                }
            });

            // Email validation helper function
            function isValidEmail(email) {
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                return emailRegex.test(email);
            }

            // Highlight invalid field
            function highlightField(field) {
                field.style.borderColor = 'red';
            }

            // Reset field styling
            function resetField(field) {
                field.style.borderColor = '#ddd';
            }

            // Show success message popup
            function showSuccessMessage() {
                // Create modal elements
                const modal = document.createElement('div');
                modal.className = 'success-modal';

                const modalContent = document.createElement('div');
                modalContent.className = 'modal-content';

                const closeBtn = document.createElement('span');
                closeBtn.className = 'close-button';
                closeBtn.innerHTML = '&times;';

                const icon = document.createElement('i');
                icon.className = 'fas fa-check-circle';

                const heading = document.createElement('h3');
                heading.textContent = 'Thank You!';

                const message = document.createElement('p');
                message.textContent = 'Your message has been sent successfully. We will get back to you soon!';

                // Assemble modal
                modalContent.appendChild(closeBtn);
                modalContent.appendChild(icon);
                modalContent.appendChild(heading);
                modalContent.appendChild(message);
                modal.appendChild(modalContent);

                // Add modal to body
                document.body.appendChild(modal);

                // Add styles for the modal
                const style = document.createElement('style');
                style.textContent = `
            .success-modal {
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                background-color: rgba(0, 0, 0, 0.5);
                display: flex;
                justify-content: center;
                align-items: center;
                z-index: 1001;
                animation: fadeIn 0.3s ease;
            }
            
            .modal-content {
                background-color: white;
                padding: 30px;
                border-radius: 10px;
                text-align: center;
                position: relative;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
                max-width: 400px;
                animation: slideIn 0.3s ease;
            }
            
            .close-button {
                position: absolute;
                top: 10px;
                right: 15px;
                font-size: 24px;
                cursor: pointer;
                color: #aaa;
            }
            
            .close-button:hover {
                color: #333;
            }
            
            .fa-check-circle {
                color: darkred;
                font-size: 60px;
                margin-bottom: 15px;
            }
            
            .modal-content h3 {
                color: darkred;
                margin-bottom: 10px;
            }
            
            .modal-content p {
                color: #555;
                margin-bottom: 0;
            }
            
            @keyframes fadeIn {
                from { opacity: 0; }
                to { opacity: 1; }
            }
            
            @keyframes slideIn {
                from { transform: translateY(-20px); opacity: 0; }
                to { transform: translateY(0); opacity: 1; }
            }
        `;
                document.head.appendChild(style);

                // Close button functionality
                closeBtn.addEventListener('click', function () {
                    document.body.removeChild(modal);
                });

                // Close when clicking outside the modal
                modal.addEventListener('click', function (event) {
                    if (event.target === modal) {
                        document.body.removeChild(modal);
                    }
                });

                // Auto close after 5 seconds
                setTimeout(function () {
                    if (document.body.contains(modal)) {
                        document.body.removeChild(modal);
                    }
                }, 5000);
            }
        });
    </script>
</body>
</html>