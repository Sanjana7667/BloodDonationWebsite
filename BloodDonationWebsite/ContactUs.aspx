<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Drop4Life Blood Donation</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary: darkred;
            --light: white;
            --accent-red: #c0392b;
        }

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        .navbar {
            background: linear-gradient(135deg, darkred, darkred, red);
            padding: 1rem 2rem;
            position: fixed;
            width: 100%;
            top: 0;
            z-index: 1000;
            font-size: 20px;
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

        body {
            background: url('/images/imgggg.jpg');
            background-size:cover;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            padding-top: 100px;
        }

        .main-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            max-width: 900px;
            background: white;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            display: flex;
            width: 100%;
        }

        .contact-info {
            background: linear-gradient(135deg, darkred, red);
            color: white;
            padding: 40px;
            width: 40%;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }

        .contact-form {
            width: 60%;
            padding: 40px;
        }

        .contact-info h2, .contact-form h2 {
            margin-bottom: 20px;
            color: darkred;
        }

        .info-item {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }

        .info-item i {
            font-size: 1.5rem;
            margin-right: 15px;
            color: white;
        }

        .contact-form form {
            display: flex;
            flex-direction: column;
        }

        .contact-form label {
            margin-bottom: 10px;
            color: #333;
        }

        .contact-form input,
        .contact-form textarea {
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .contact-form input:focus,
        .contact-form textarea:focus {
            border-color: darkred;
            box-shadow: 0 0 10px rgba(220, 20, 60, 0.2);
        }

        .contact-form button {
            background: darkred;
            color: white;
            border: none;
            padding: 12px;
            border-radius: 5px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: bold;
        }

        .contact-form button:hover {
            background: #8b0000;
            transform: translateY(-3px);
        }

        footer {
            background: linear-gradient(135deg, darkred, darkred, red);
            color: var(--white);
            padding: 3rem 0 2rem;
            width: 100%;
        }

        .footer-container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 2rem;
            display: grid;
            color: white;
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
            color: white;
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
            color: white;
        }

        .footer-links li {
            margin-bottom: 0.5rem;
            color: white;
        }

        .footer-links a {
            color: white;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer-links a:hover {
            color: #f0f0f0;
        }

        .social-links {
            display: flex;
            gap: 1rem;
            margin-top: 1rem;
            color: white;
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
            .container {
                flex-direction: column;
            }

            .contact-info, .contact-form {
                width: 100%;
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

    <div class="main-container">
        <div class="container">
            <div class="contact-info">
                <h2 style="color:white;">Contact Information</h2>
                <div class="info-item">
                    <i class="fas fa-map-marker-alt"></i>
                    <p>123 Blood Drive Street, New York, NY 10001</p>
                </div>
                <div class="info-item">
                    <i class="fas fa-phone"></i>
                    <p>+1 (555) 123-4567</p>
                </div>
                <div class="info-item">
                    <i class="fas fa-envelope"></i>
                    <p>contact@drop4life.org</p>
                </div>
            </div>
            <div class="contact-form">
                <h2>Send us a Message</h2>
                <form>
                    <label for="name">Full Name</label>
                    <input type="text" id="name" required>
                    
                    <label for="email">Email</label>
                    <input type="email" id="email" required>
                    
                    <label for="message">Message</label>
                    <textarea id="message" rows="5" required></textarea>
                    
                    <button type="submit">Send Message</button>
                </form>
            </div>
        </div>
    </div>

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
    <script>
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