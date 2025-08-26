<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign Up.aspx.cs" Inherits="BloodDonationWebsite.Sign_Up" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign Up - Blood Donation Website</title>
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
        /* Add these styles to your existing CSS */
.form-row {
  display: flex;
  margin: 0 -10px; /* Negative margin to counteract padding */
  flex-wrap: wrap; /* Allow wrapping on smaller screens */
}

.half-width {
  flex: 1;
  padding: 0 10px;
  min-width: 250px; /* Ensures fields have a minimum width before wrapping */
}

/* Adjust existing styles if needed */
.form-group {
  margin-bottom: 15px;
}

.input-icon-wrapper {
  position: relative;
}

.input-icon {
  position: absolute;
  left: 10px;
  top: 50%;
  transform: translateY(-50%);
  color: #777;
}

/* Style the textboxes to account for the icon */
.input-icon-wrapper input,
.input-icon-wrapper textarea,
.input-icon-wrapper select,
.input-icon-wrapper asp\:TextBox {
  padding-left: 35px;
  width: 100%;
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
            background-color: #f4f4f9;
            background-image: url('images/bk1.jpg');
            background-size:cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: #333;
            padding-top:50px;
         
        }

        .signup-container {
            background-color: white;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            border-radius: 12px;
            margin-top:0px;
            width: 100%;
            max-width: 550px;
            position: relative;
            overflow: hidden;
            animation: fadeIn 0.5s ease forwards;
            padding:30px;

        }

        .signup-container::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 8px;
            background: linear-gradient(to right, var(--primary-color), var(--accent-color));
        }

        .signup-heading {
            margin-bottom: 30px;
            text-align: center;
            position: relative;
        }
        .signup-heading .fas{
            color:darkred;
        }
        h2 {
            color: darkred;
            font-size: 32px;
            font-weight: 600;
            margin-bottom: 5px;
        }

        .signup-heading::after {
            content: '';
            display: block;
            width: 60px;
            height: 4px;
            background-color: var(--primary-color);
            margin: 12px auto 0;
            border-radius: 2px;
            animation: fadeIn 0.5s ease forwards;
        }

        .signup-tagline {
            color: #666;
            font-size: 16px;
            margin-top: 10px;
        }

        .form-group {
            margin-bottom: 22px;
            position: relative;
            animation: fadeIn 0.5s ease forwards;
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
        input[type="password"], 
        input[type="tel"] {
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
        input[type="password"]:focus, 
        input[type="tel"]:focus {
            border-color: var(--accent-color);
            outline: none;
            box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
            background-color: white;
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

        .error {
            color: var(--error-color);
            font-size: 13px;
            margin-top: 5px;
            display: block;
            font-weight: 500;
            padding-left: 5px;
        }

        .blood-icon {
            color: var(--primary-color);
            font-size: 32px;
            margin-bottom: 15px;
        }

        .signup-footer {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
    </style>
    <script>
        function validateForm() {
            let isValid = true;

            const name = document.getElementById("<%= txtName.ClientID %>").value;
            const email = document.getElementById("<%= txtEmail.ClientID %>").value;
            const phone = document.getElementById("<%= txtPhone.ClientID %>").value;
            const password = document.getElementById("<%= txtPassword.ClientID %>").value;
            const confirmPassword = document.getElementById("<%= txtConfirmPassword.ClientID %>").value;

            const nameError = document.getElementById("nameError");
            const emailError = document.getElementById("emailError");
            const phoneError = document.getElementById("phoneError");
            const passwordError = document.getElementById("passwordError");
            const confirmPasswordError = document.getElementById("confirmPasswordError");

            nameError.textContent = "";
            emailError.textContent = "";
            phoneError.textContent = "";
            passwordError.textContent = "";
            confirmPasswordError.textContent = "";

            if (name.trim() === "") {
                nameError.textContent = "Name is required.";
                isValid = false;
            }

            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                emailError.textContent = "Invalid email format.";
                isValid = false;
            }

            if (phone.trim() === "" || phone.length < 10) {
                phoneError.textContent = "Valid phone number is required.";
                isValid = false;
            }

            if (password.trim() === "") {
                passwordError.textContent = "Password is required.";
                isValid = false;
            }

            if (password !== confirmPassword) {
                confirmPasswordError.textContent = "Passwords do not match.";
                isValid = false;
            }

            return isValid;
        }
    </script>
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
    <form id="form1" runat="server" class="signup-container" onsubmit="return validateForm();">
               
        <div class="signup-heading">
            <i class="fas fa-tint blood-icon"></i>
            <h2>Sign Up</h2>
            <div class="signup-tagline">Join our blood donation community and help save lives</div>
        </div>
        
        <div class="form-group">
            <label for="txtName">Full Name</label>
            <div class="input-icon-wrapper">
                <i class="fas fa-user input-icon"></i>
                <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name"></asp:TextBox>
            </div>
            <div id="nameError" class="error"></div>
        </div>
  <div class="form-row">
  <div class="form-group half-width">
    <label for="txtEmail">Email Address</label>
    <div class="input-icon-wrapper">
      <i class="fas fa-envelope input-icon"></i>
      <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" placeholder="Enter your email address"></asp:TextBox>
    </div>
    <div id="emailError" class="error"></div>
  </div>
  
  <div class="form-group half-width">
    <label for="txtPhone">Phone Number</label>
    <div class="input-icon-wrapper">
      <i class="fas fa-phone input-icon"></i>
      <asp:TextBox ID="txtPhone" runat="server" TextMode="Phone" placeholder="Enter your phone number"></asp:TextBox>
    </div>
    <div id="phoneError" class="error"></div>
  </div>
</div>
 <div class="form-row">
  <div class="form-group half-width">
        
   
            <label for="txtPassword">Password</label>
            <div class="input-icon-wrapper">
                <i class="fas fa-lock input-icon"></i>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Create a password"></asp:TextBox>
            </div>
            <div id="passwordError" class="error"></div>
        </div>
        
         <div class="form-group half-width">
            <label for="txtConfirmPassword">Confirm Password</label>
            <div class="input-icon-wrapper">
                <i class="fas fa-lock input-icon"></i>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm your password"></asp:TextBox>
            </div>
            <div id="confirmPasswordError" class="error"></div>
        </div>
      </div>
            </div>
        
        <asp:Button ID="Button1" runat="server" Text="Create Account" CssClass="btn" OnClick="Button1_Click" />
        
        <div class="signup-footer">
            Your contribution can save lives. Join us today!
        </div>
    </form>
</body>
</html>
