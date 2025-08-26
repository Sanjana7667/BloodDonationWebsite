<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="styles.css">
     <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/js/all.min.js"></script>
     <script src="script.js"></script>
    
    <style>
     /* Base Styles */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body {
    background-color: #f8f8f8;
    color: #333;
    line-height: 1.6;
}
.container{
    display:container-fluid;
}
:root {
    --primary: #800000;
    --primary-light: #a00000;
    --primary-dark: #600000;
    --secondary: #ff4d4d;
    --secondary-light: #ff6b6b;
    --accent: #ffcccb;
    --white: #ffffff;
    --light-gray: #f5f5f5;
    --gray: #cecece;
    --dark-gray: #333333;
    --black: #000000;
    --success: #28a745;
    --error: #dc3545;
    --warning: #ffc107;
    --info: #17a2b8;
}

/* Utility classes */
.container {
    
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 2rem;
    align-items:center;
}

.text-center {
    text-align: center;
}

.required {
    color: var(--error);
    margin-left: 3px;
}

/* Navbar */
.navbar {
    background: linear-gradient(135deg, var(--primary-dark), var(--primary), var(--secondary));
    padding: 1rem 2rem;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
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
    color: var(--white);
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
    color: var(--white);
    transition: fill 0.3s ease;
    filter: drop-shadow(0 0 2px rgba(255, 255, 255, 0.3));
}

.logo:hover svg {
    fill: var(--white);
    filter: drop-shadow(0 0 5px rgba(255, 255, 255, 0.5));
}

.nav-links {
    display: flex;
    gap: 1.5rem;
    align-items: center;
}

.nav-links a {
    color: var(--white);
    text-decoration: none;
    padding: 0.5rem 1rem;
    border-radius: 4px;
    font-weight: 500;
    transition: all 0.3s ease;
    position: relative;
}

.nav-links a:hover {
    background-color: rgba(255, 255, 255, 0.1);
    color: var(--white);
    transform: translateY(-2px);
}

.nav-links a::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    width: 0;
    height: 2px;
    background-color: var(--white);
    transition: all 0.3s ease;
    transform: translateX(-50%);
}

.nav-links a:hover::after {
    width: 80%;
}

.nav-links a.active {
    background-color: rgba(255, 255, 255, 0.2);
    color: var(--white);
}

.nav-links a.active::after {
    width: 80%;
}

/* Auth buttons */
.nav-links a.auth-btn {
    background-color: rgba(255, 255, 255, 0.2);
    border: 1px solid rgba(255, 255, 255, 0.3);
    padding: 0.5rem 1.2rem;
    border-radius: 20px;
    font-weight: 600;
    transition: all 0.3s ease;
}

.nav-links a.auth-btn.highlight {
    background-color: var(--white);
    color: var(--primary);
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
}

.nav-links a.auth-btn:hover {
    transform: translateY(-3px);
}

.nav-links a.auth-btn.highlight:hover {
    background-color: var(--light-gray);
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
}

/* Hamburger menu */
.hamburger {
    display: none;
    flex-direction: column;
    cursor: pointer;
}

.hamburger span {
    width: 25px;
    height: 3px;
    background-color: var(--white);
    margin: 2px 0;
    border-radius: 2px;
    transition: all 0.3s ease;
}

/* Hero Section */
.hero-section {
    background: linear-gradient(rgba(128, 0, 0, 0.2), darkred), url('/images/h4.jpg');
    margin-top:40px;
    height: 450px;
    display: flex;
   
    justify-content: center;
    text-align: center;
    color: var(--white);
    padding: 0 2rem;
    background-size:contain;
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
    padding-top:100px;
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

/* Stats Container */
.stats-container {
    display: flex;
    justify-content: space-around;
    background-color: var(--white);
    padding-top: 2.5rem;
    margin: 3rem;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
    border-radius: 15px;
    max-width: 1500px;
    margin: -60px auto 4rem;
    position: relative;
    z-index: 10;
    transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.stats-container:hover {
    transform: translateY(-5px);
    box-shadow: 0 15px 40px rgba(0, 0, 0, 0.15);
}

.stat-item {
    text-align: center;
    padding: 0 1rem;
    position: relative;
}

.stat-item:not(:last-child)::after {
    content: '';
    position: absolute;
    right: 0;
    top: 20%;
    height: 60%;
    width: 1px;
    background-color: #e0e0e0;
}

.stat-value {
    font-size: 2.8rem;
    font-weight: 700;
    color: var(--primary);
    margin-bottom: 0.5rem;
    line-height: 1;
    position: relative;
    display: inline-block;
}

.stat-value::after {
    content: '';
    position: absolute;
    bottom: -10px;
    left: 50%;
    transform: translateX(-50%);
    width: 40px;
    height: 3px;
    background-color: var(--secondary);
    border-radius: 2px;
}

.stat-label {
    font-size: 1.1rem;
    color: var(--dark-gray);
    text-transform: uppercase;
    letter-spacing: 1px;
    font-weight: 500;
    margin-top: 0.8rem;
}

/* Benefits Grid */
.benefits-grid {
    display: grid;
    grid-template-columns: repeat(3, 1fr);
    gap: 2.5rem;
    max-width: 1500px;
    margin: 0 auto 5rem;
    padding: 0 2rem;
}

.benefit-card {
    background-color: var(--white);
    padding: 2.5rem 2rem;
    border-radius: 15px;
    text-align: center;
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.05);
    transition: all 0.4s ease;
    display: flex;
    flex-direction: column;
    align-items: center;
    border-bottom: 4px solid transparent;
}

.benefit-card:hover {
    transform: translateY(-10px);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
    border-bottom: 4px solid var(--primary);
}

.benefit-icon {
    width: 80px;
    height: 80px;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    color: var(--white);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 1.8rem;
    font-size: 2rem;
    box-shadow: 0 10px 20px rgba(128, 0, 0, 0.2);
    transition: transform 0.3s ease;
}

.benefit-card:hover .benefit-icon {
    transform: scale(1.1) rotate(5deg);
}
 /* Video Section Styles */
.video-section {
    padding: 5rem 2rem;
    background-color: var(--light-gray);
    align-items:center;
    justify-content:center;
    max-width:1500px;
}

.video-section h2 {
    text-align: center;
    color: var(--primary);
    margin-bottom: 3rem;
    font-size: 2.5rem;
    position: relative;
}

.video-section h2::after {
    content: '';
    display: block;
    width: 80px;
    height: 3px;
    background: linear-gradient(to right, var(--primary), var(--secondary));
    margin: 15px auto 0;
    border-radius: 1.5px;
}

.video-content {
    font-size:20px;
    display: flex;
    align-items: center;
    justify-content:center;
    gap: 3rem;
    max-width: 1500px;
    margin: 0 auto;
}

.video-wrapper {
    flex: 3;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    border-radius: 15px;
    
    align-items:center;
    justify-content:center;
    margin-left:20px;
}

.video-description {
    flex: 1;
    padding: 2rem;
    background-color: var(--white);
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
    text-align:center;
}

.video-description h3 {
    color: var(--primary);
    margin-bottom: 1rem;
    font-size: 20px;
}

/* Image and Text Sections */
.image-text-sections {
    padding: 5rem 2rem;
}

.image-text-row {
    display: flex;
    align-items: center;
    gap: 4rem;
    margin-bottom: 4rem;
    max-width: 1200px;
    margin-left: auto;
    margin-right: auto;
}

.image-text-row.reverse {
    flex-direction: row-reverse;
}

.image-wrapper {
    flex: 1;
    border-radius: 15px;
    overflow: hidden;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s ease;
}

.image-wrapper:hover {
    transform: scale(1.03);
}

.image-wrapper img {
    width: 100%;
    height: auto;
    object-fit: cover;
}

.text-content {
    flex: 1;
    padding: 2rem;
    background-color: var(--white);
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
}

.text-content h3 {
    color: var(--primary);
    margin-bottom: 1rem;
    font-size: 1.8rem;
}
.benefit-card h3 {
    font-size: 1.6rem;
    margin-bottom: 1.2rem;
    color: var(--primary);
    position: relative;
    padding-bottom: 0.8rem;
}

.benefit-card h3::after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 40px;
    height: 2px;
    background-color: var(--secondary);
}

.benefit-card p {
    color: var(--dark-gray);
    line-height: 1.7;
    font-size: 1.05rem;
}

/* Donation Process */
.donation-process {
    background-color: var(--light-gray);
    padding: 5rem 2rem;
    text-align: center;
    position: relative;
    overflow: hidden;
}

.donation-process::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: url('/api/placeholder/100/100') repeat;
    opacity: 0.03;
    z-index: 0;
}

.donation-process h2 {
    font-size: 2.8rem;
    margin-bottom: 3.5rem;
    color: var(--primary);
    position: relative;
    display: inline-block;
    z-index: 1;
}

.donation-process h2::after {
    content: '';
    display: block;
    width: 100px;
    height: 4px;
    background: linear-gradient(to right, var(--primary), var(--secondary));
    margin: 15px auto 0;
    border-radius: 2px;
}

.process-steps {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 2.5rem;
    max-width: 1200px;
    margin: 0 auto;
    position: relative;
    z-index: 1;
}

.process-steps::before {
    content: '';
    position: absolute;
    top: 25px;
    left: calc(12.5% + 25px);
    width: calc(75% - 50px);
    height: 3px;
    background: linear-gradient(to right, var(--primary-light), var(--secondary));
    z-index: -1;
}

.step {
    display: flex;
    align-items: center;
    background-color: var(--white);
    padding: 2rem;
    border-radius: 12px;
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.08);
    width: 280px;
    transition: all 0.4s ease;
    position: relative;
    z-index: 2;
}

.step:hover {
    transform: translateY(-8px);
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
}

.step-number {
    width: 60px;
    height: 60px;
    background: linear-gradient(135deg, var(--primary), var(--secondary));
    color: var(--white);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.8rem;
    font-weight: 700;
    margin-right: 1.2rem;
    box-shadow: 0 5px 15px rgba(128, 0, 0, 0.2);
    flex-shrink: 0;
}

.step-content {
    text-align: left;
}

.step-content h4 {
    font-size: 1.3rem;
    margin-bottom: 0.7rem;
    color: var(--primary);
}

.step-content p {
    color: var(--dark-gray);
    font-size: 1rem;
    line-height: 1.5;
}

/* Donation Form */
.donation-form-container {
    max-width: 900px;
    margin: 5rem auto;
    padding: 0 2rem;
}

.form-header {
    text-align: center;
    margin-bottom: 3rem;
}

.form-header h2 {
    font-size: 2.8rem;
    color: var(--primary);
    margin-bottom: 1rem;
    position: relative;
    display: inline-block;
}

.form-header h2::after {
    content: '';
    display: block;
    width: 80px;
    height: 4px;
    background: linear-gradient(to right, var(--primary), var(--secondary));
    margin: 15px auto 0;
    border-radius: 2px;
}

.form-header p {
    color: var(--dark-gray);
    font-size: 1.2rem;
    max-width: 600px;
    margin: 0 auto;
}

.progress-container {
    width: 100%;
    background: #f0f0f0;
    height: 8px;
    margin-bottom: 2.5rem;
    border-radius: 4px;
    overflow: hidden;
    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
}

.progress-bar {
    width: 0;
    height: 100%;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    border-radius: 4px;
    transition: width 0.3s ease;
}

.donation-form {
    background-color: var(--white);
    padding: 3rem;
    border-radius: 15px;
    box-shadow: 0 15px 50px rgba(0, 0, 0, 0.1);
    position: relative;
}

.donation-form::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 10px;
    background: linear-gradient(90deg, var(--primary), var(--secondary));
    border-radius: 15px 15px 0 0;
}

.form-group {
    margin-bottom: 2rem;
    position: relative;
    animation: fadeIn 0.5s ease forwards;
    opacity: 0;
}

@keyframes fadeIn {
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.form-group:nth-child(1) { animation-delay: 0.1s; }
.form-group:nth-child(2) { animation-delay: 0.2s; }
.form-group:nth-child(3) { animation-delay: 0.3s; }
.form-group:nth-child(4) { animation-delay: 0.4s; }
.form-group:nth-child(5) { animation-delay: 0.5s; }
.form-group:nth-child(6) { animation-delay: 0.6s; }
.form-group:nth-child(7) { animation-delay: 0.7s; }

.form-group label {
    display: block;
    margin-bottom: 0.8rem;
    font-weight: 500;
    color: var(--dark-gray);
    font-size: 1.05rem;
}

.input-with-icon {
    position: relative;
}

.input-with-icon i {
    position: absolute;
    left: 15px;
    top: 50%;
    transform: translateY(-50%);
    color: var(--gray);
    font-size: 1.1rem;
    transition: color 0.3s ease;
}

.input-with-icon input,
.input-with-icon select,
.input-with-icon textarea {
    width: 100%;
    padding: 0.9rem 1rem 0.9rem 3rem;
    border: 1px solid var(--gray);
    border-radius: 8px;
    font-size: 1rem;
    transition: all 0.3s ease;
}

.input-with-icon input:focus,
.input-with-icon select:focus,
.input-with-icon textarea:focus {
    border-color: var(--primary);
    box-shadow: 0 0 0 3px rgba(128, 0, 0, 0.1);
    outline: none;
}

.input-with-icon input:focus + i,
.input-with-icon select:focus + i,
.input-with-icon textarea:focus + i {
    color: var(--primary);
}

.input-with-icon textarea {
    min-height: 120px;
    resize: vertical;
}

.error-message {
    color: var(--error);
    font-size: 0.85rem;
    margin-top: 0.5rem;
    display: none;
}

.checkbox-group {
    display: flex;
    align-items: flex-start;
    gap: 10px;
}

.checkbox-group input[type="checkbox"] {
    width: 20px;
    height: 20px;
    margin-top: 2px;
    accent-color: var(--primary);
}

.checkbox-group label {
    margin-bottom: 0;
    flex: 1;
}

.submit-btn {
    background: linear-gradient(135deg, var(--primary), var(--primary-light));
    color: var(--white);
    border: none;
    border-radius: 30px;
    padding: 1rem 2rem;
    font-size: 1.1rem;
    font-weight: 600;
    cursor: pointer;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 10px;
    transition: all 0.3s ease;
    width: 100%;
    box-shadow: 0 5px 15px rgba(128, 0, 0, 0.2);
    position: relative;
    overflow: hidden;
}

.submit-btn::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
    transition: all 0.6s ease;
}

.submit-btn:hover {
    background: linear-gradient(135deg, var(--primary-light), var(--primary));
    transform: translateY(-3px);
    box-shadow: 0 8px 25px rgba(128, 0, 0, 0.3);
}

.submit-btn:hover::before {
    left: 100%;
}

.submit-btn:active {
    transform: translateY(-1px);
}

.submit-btn i {
    transition: transform 0.3s ease;
}

.submit-btn:hover i {
    transform: translateX(5px);
}

/* Eligibility Section */
.eligibility-section {
    display: flex;
    align-items: center;
    flex-wrap: wrap;
    max-width: 1200px;
    margin: 0 auto 5rem;
    padding: 0 2rem;
    gap: 3rem;
}

.eligibility-content {
    flex: 1;
    min-width: 300px;
}

.eligibility-content h2 {
    font-size: 2.5rem;
    color: var(--primary);
    margin-bottom: 1.5rem;
    position: relative;
    display: inline-block;
}

.eligibility-content h2::after {
    content: '';
    display: block;
    width: 70px;
    height: 3px;
    background: var(--secondary);
    margin-top: 10px;
    border-radius: 1.5px;
}

.eligibility-content p {
    font-size: 1.1rem;
    color: var(--dark-gray);
    margin-bottom: 1.5rem;
}

.eligibility-list {
    list-style: none;
    margin-bottom: 2rem;
}

.eligibility-list li {
    padding: 0.8rem 0;
    border-bottom: 1px solid #eee;
    display: flex;
    align-items: center;
    font-size: 1.05rem;
}

.eligibility-list li:last-child {
    border-bottom: none;
}

.eligibility-list li i {
    color: var(--success);
    margin-right: 1rem;
    font-size: 1.2rem;
}

.learn-more-btn {
    display: inline-block;
    background-color: transparent;
    color: var(--primary);
    border: 2px solid var(--primary);
    border-radius: 30px;
    padding: 0.8rem 1.8rem;
    font-size: 1rem;
    font-weight: 600;
    text-decoration: none;
    transition: all 0.3s ease;
}

.learn-more-btn:hover {
    background-color: var(--primary);
    color: var(--white);
    transform: translateY(-3px);
    box-shadow: 0 5px 15px rgba(128, 0, 0, 0.2);
}

.eligibility-image {
    flex: 1;
    min-width: 300px;
    display: flex;
    justify-content: center;
}

.eligibility-image img {
    border-radius: 12px;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
    max-width: 100%;
    transition: transform 0.3s ease;
}

.eligibility-image img:hover {
    transform: scale(1.03);
}

/* Testimonials Section */
.testimonials-section {
    background-color: var(--light-gray);
    padding: 5rem 2rem;
    text-align: center;
}

.testimonials-section h2 {
    font-size: 2.5rem;
    color: var(--primary);
    margin-bottom: 3rem;
    position: relative;
    display: inline-block;
}

.testimonials-section h2::after {
    content: '';
    display: block;
    width: 80px;
    height: 3px;
    background: linear-gradient(to right, var(--primary), var(--secondary));
    margin: 15px auto 0;
    border-radius: 1.5px;
}

.testimonials-container {
    display: flex;
    justify-content: center;
    gap: 3rem;
    max-width: 1200px;
    margin: 0 auto;
    flex-wrap: wrap;
}

.testimonial-card {
    background-color: var(--white);
    padding: 3rem;
    border-radius: 12px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.05);
    max-width: 450px;
    text-align: left;
    position: relative;
    transition: all 0.3s ease;
}

.testimonial-card:hover {
    transform: translateY(-8px);
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
}

.testimonial-quote {
    position: absolute;
    top: -20px;
    left: 30px;
    width: 40px;
    height: 40px;
    background-color: var(--primary);
    color: var(--white);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1.2rem;
    box-shadow: 0 5px 15px rgba(128, 0, 0, 0.2);
}

.testimonial-card p {
    font-size: 1.05rem;
    color: var(--dark-gray);
    line-height: 1.7;
    margin-bottom: 2rem;
    font-style: italic;
}

.testimonial-author {
    display: flex;
    align-items: center;
    gap: 1rem;
}

.author-avatar {
    width: 60px;
    height: 60px;
    border-radius: 50%;
    overflow: hidden;
    border: 3px solid var(--primary);
}

.author-avatar img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.author-info h4 {
    font-size: 1.1rem;
    color: var(--primary);
    margin-bottom: 0.3rem;
}

.author-info p {
    font-size: 0.9rem;
    color: dimgrey;
    margin-bottom: 0;
    font-style: normal;
}

/* FAQ Section */
.faq-section {
    padding: 5rem 2rem;
    max-width: 1000px;
    margin: 0 auto;
}

.faq-section h2 {
    font-size: 2.5rem;
    color: var(--primary);
    text-align: center;
    margin-bottom: 3rem;
    position: relative;
    display: inline-block;
    left: 50%;
    transform: translateX(-50%);
}

.faq-section h2::after {
    content: '';
    display: block;
    width: 80px;
    height: 3px;
    background: linear-gradient(to right, var(--primary), var(--secondary));
    margin: 15px auto 0;
    border-radius: 1.5px;
}

.faq-container {
    display: flex;
    flex-direction: column;
    gap: 1.5rem;
}

.faq-item {
    background-color: white;
    border-radius: 10px;
    overflow: hidden;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
    transition: all 0.3s ease;
}

.faq-item:hover {
    box-shadow: 0 8px 25px rgba(0, 0, 0, 0.1);
}

.faq-question {
    padding: 1.5rem;
    cursor: pointer;
    display: flex;
    justify-content: space-between;
    align-items: center;
    border-bottom: 1px solid transparent;
    transition: all 0.3s ease;
}

.faq-question h3 {
    font-size: 1.2rem;
    color: var(--dark-gray);
    transition: color 0.3s ease;
}

.faq-question i {
    color: var(--primary);
    font-size: 25px;
    transition: transform 0.3s ease;
}


.
.faq-answer {
    padding: 0 1.5rem;
    max-height: 0;
    transition: all 0.3s ease;
}


.faq-answer p {
    color: black;
    font-size:20px;
    line-height: 1.6;
    margin: 30px;
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
                <a href="Donate.aspx" class="active">Donate</a>
                <a href="SearchforDrives.aspx">Drives</a>
                <a href="Success Stories.aspx">Stories</a>
                <a href="ContactUs.aspx">Contact</a>
                <a href="Sign In.aspx" class="auth-btn">Sign In</a>
                <a href="Sign Up.aspx" class="auth-btn highlight">Sign Up</a>
            </div>
           
        </div>
    </nav>

    <div class="hero-section">
        <div class="hero-content">
            <br /><br /><br />
            <h1>Donate Now</h1>
            <p>Your donation can save up to three lives. Join thousands of donors making a difference.</p>
        </div>
    </div>
    <br /><br />
    <div class="stats-container">
        <div class="stat-item">
            <div class="stat-value">10,000+</div>
            <div class="stat-label">Donors</div>
        </div>
        <div class="stat-item">
            <div class="stat-value">30,000+</div>
            <div class="stat-label">Lives Saved</div>
        </div>
        <div class="stat-item">
            <div class="stat-value">500+</div>
            <div class="stat-label">Blood Drives</div>
        </div>
    </div>
    <br /><br />
    <div class="benefits-grid">
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-heart"></i>
            </div>
            <h3>Make someone smile</h3>
            <p>Your donation brings hope and happiness to patients in need.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-hand-holding-heart"></i>
            </div>
            <h3>Be generous</h3>
            <p>A single donation can help multiple patients in critical conditions.</p>
        </div>
        <div class="benefit-card">
            <div class="benefit-icon">
                <i class="fas fa-star"></i>
            </div>
            <h3>Save a life</h3>
            <p>Your donation directly contributes to saving someone's life.</p>
        </div>
    </div>
    <br />
     <div class="video-section">
        <div class="container">
            <h2>Blood Donation Journey</h2>
            <div class="video-content">
                <div class="video-wrapper">
                   <center> <iframe width="853" height="480" src="https://www.youtube.com/embed/jmhiHKsEUXU?start=11" title="Donating Blood for the First Time" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe></center>
                </div>
            </div>
            
          
    
    
            <div class="video-content">
                <div class="video-description">
                    <h3>Learn About Blood Donation</h3>
                    <p>Watch our comprehensive video guide that walks you through the entire blood donation process. Understand the steps, safety measures, and the incredible impact your donation can make.</p>
                </div>
            </div>
      </div>
    </div>
    <div class="donation-process">
        <h2>How Donation Works</h2>
        <div class="process-steps">
            <div class="step">
                <div class="step-number">1</div>
                <div class="step-content">
                    <h4>Registration</h4>
                    <p>Fill out our donation form with your details</p>
                </div>
            </div>
            <div class="step">
                <div class="step-number">2</div>
                <div class="step-content">
                    <h4>Health Screening</h4>
                    <p>Visit our office for a quick health check to ensure safe donation</p>
                </div>
            </div>
            <div class="step">
                <div class="step-number">3</div>
                <div class="step-content">
                    <h4>Blood Donation</h4>
                    <p>10-15 minute process to donate blood</p>
                </div>
            </div>
            <div class="step">
                <div class="step-number">4</div>
                <div class="step-content">
                    <h4>Refreshments</h4>
                    <p>Rest and enjoy refreshments after donation</p>
                </div>
            </div>
        </div>
    </div>
    <br /><br />
     <div class="image-text-sections">
        <div class="container">
            <div class="image-text-row">
                <div class="image-wrapper">
                    <img src="/images/donationprocess.png" alt="Blood Donation Process"/>
                </div>
                <div class="text-content">
                    <h3>Blood Donation Process</h3>
                    <p>Learn about the step-by-step process of donating blood, from registration to post-donation care. Our trained professionals ensure a safe and comfortable experience.</p>
                </div>
            </div>
            <div class="image-text-row reverse">
                <div class="image-wrapper">
                    <img src="/images/health.jpg" alt="Medical Screening"/>
                </div>
                <div class="text-content">
                    <h3>Medical Screening</h3>
                    <p>We prioritize donor and recipient safety through comprehensive medical screenings. Our health professionals conduct thorough checks to ensure the best possible donation experience.</p>
                </div>
            </div>
        </div>
    </div>
     <br /><br />
    <form id="donationForm" runat="server" class="donation-form-container">
        <div class="form-header">
            <h2>Donor Registration</h2>
            <p>Please fill out the form below to register as a donor</p>
        </div>
        
        <div class="progress-container">
            <div class="progress-bar" id="formProgress"></div>
        </div>
       
        <div class="donation-form">
            <div class="form-group">
                <label for="txtName">Full Name <span class="required">*</span></label>
                <div class="input-with-icon">
                    <i class="fas fa-user"></i>
                    <input type="text" id="txtName" name="txtName" placeholder="Enter your full name" required>
                </div>
                <div class="error-message" id="nameError"></div>
            </div>
            
            <div class="form-group">
                <label for="txtAge">Age <span class="required">*</span></label>
                <div class="input-with-icon">
                    <i class="fas fa-birthday-cake"></i>
                    <input type="number" id="txtAge" name="txtAge" placeholder="Enter your age" min="17" max="100" required>
                </div>
                <div class="error-message" id="ageError"></div>
            </div>
            
            <div class="form-group">
                <label for="ddlBloodGroup">Blood Group <span class="required">*</span></label>
                <div class="input-with-icon">
                    <i class="fas fa-tint"></i>
                    <select id="ddlBloodGroup" name="ddlBloodGroup" required>
                        <option value="" disabled selected>Select Blood Group</option>
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
                <div class="error-message" id="bloodGroupError"></div>
            </div>
            
            <div class="form-group">
                <label for="txtEmail">Email ID <span class="required">*</span></label>
                <div class="input-with-icon">
                    <i class="fas fa-envelope"></i>
                    <input type="email" id="txtEmail" name="txtEmail" placeholder="Enter your email" required>
                </div>
                <div class="error-message" id="emailError"></div>
            </div>
            
            <div class="form-group">
                <label for="txtPhone">Phone Number <span class="required">*</span></label>
                <div class="input-with-icon">
                    <i class="fas fa-phone"></i>
                    <input type="tel" id="txtPhone" name="txtPhone" placeholder="Enter your phone number" required>
                </div>
                <div class="error-message" id="phoneError"></div>
            </div>
            
            <div class="form-group">
                <label for="txtAddress">Address</label>
                <div class="input-with-icon">
                    <i class="fas fa-map-marker-alt"></i>
                    <textarea id="txtAddress" name="txtAddress" placeholder="Enter your address"></textarea>
                </div>
            </div>

            <div class="form-group checkbox-group">
                <input type="checkbox" id="chkAgreement" name="chkAgreement" required>
                <label for="chkAgreement">I confirm that I am in good health and eligible to donate blood</label>
                <div class="error-message" id="agreementError"></div>
            </div>
            
            <button type="submit" id="btnSubmit" class="submit-btn">
                <span>Register as Donor</span>
                <i class="fas fa-arrow-right"></i>
            </button>
        </div>
    </form>

    <div class="eligibility-section">
        <div class="eligibility-content">
            <h2>Eligibility Criteria</h2>
            <p>Before donating, please check if you meet these criteria:</p>
            <ul class="eligibility-list">
                <li><i class="fas fa-check-circle"></i> Be at least 17 years old</li>
                <li><i class="fas fa-check-circle"></i> Weigh at least 110 pounds (50 kg)</li>
                <li><i class="fas fa-check-circle"></i> Be in good general health</li>
                <li><i class="fas fa-check-circle"></i> Have not donated blood in the last 56 days</li>
                <li><i class="fas fa-check-circle"></i> Have normal blood pressure and pulse</li>
                <li><i class="fas fa-check-circle"></i> Have hemoglobin levels above 12.5 g/dL</li>
            </ul>
            <a href="Eligibility.aspx" class="learn-more-btn">Learn More About Eligibility</a>
        </div>
        <div class="eligibility-image">
            <img src="/images/bb1.jpg" alt="Blood donation eligibility check"/>
        </div>
    </div><br /><br />

    <div class="testimonials-section">
        <h2>Donor Testimonials</h2>
        <div class="testimonials-container">
            <div class="testimonial-card">
                <div class="testimonial-quote">
                    <i class="fas fa-quote-left"></i>
                </div>
                <p>Donating blood with Drop4Life was an amazing experience. The staff was friendly and the process was quick and painless. Knowing that my donation could save lives gives me immense satisfaction.</p>
                <div class="testimonial-author">
                    <div class="author-avatar">
                        <img src="/images/sarah.jpg" alt="Sarah Johnson">
                    </div>
                    <div class="author-info">
                        <h4>Sarah Johnson</h4>
                        <p>Regular Donor, 15 donations</p>
                    </div>
                </div>
            </div>
            <div class="testimonial-card">
                <div class="testimonial-quote">
                    <i class="fas fa-quote-left"></i>
                </div>
                <p>I've been donating blood with Drop4Life for over 5 years now. The team is professional, and they make the process so smooth. It's a small sacrifice that can make a huge difference in someone's life.</p>
                <div class="testimonial-author">
                    <div class="author-avatar">
                        <img src="/images/michael.jpeg" alt="Michael Chen"/>
                    </div>
                    <div class="author-info">
                        <h4>Michael Chen</h4>
                        <p>Regular Donor, 28 donations</p>
                    </div>
                </div>
            </div>
        </div>
    </div><br /><br />

    <div class="faq-section">
        <h2>Frequently Asked Questions</h2>
          <div class="faq-container">
    <div class="faq-item">
        <div class="faq-question">
            <h3>How often can I donate blood?</h3>
           
        </div>
        <div class="faq-answer">
            <p>    You can donate whole blood every 8 weeks (56 days). If you donate other blood components like platelets, you can donate more frequently.</p>
        </div>
    </div>
    <div class="faq-item">
        <div class="faq-question">
            <h3>Is donating blood painful?</h3>
         
        </div>
        <div class="faq-answer">
            <p>    Most donors report minimal discomfort. You might feel a quick pinch when the needle is inserted, but the actual donation process is typically painless.</p>
        </div>
    </div>
    <div class="faq-item">
        <div class="faq-question">
            <h3>How long does the donation process take?</h3>
     
        </div>
        <div class="faq-answer">
            <p>    The entire process takes about 45-60 minutes, but the actual blood donation usually takes only 10-15 minutes.</p>
        </div>
    </div>
</div>
    </div>
    <br /><br />
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
        document.addEventListener('DOMContentLoaded', function () {
            const form = document.getElementById('donationForm');
            const nameInput = document.getElementById('txtName');
            const ageInput = document.getElementById('txtAge');
            const bloodGroupSelect = document.getElementById('ddlBloodGroup');
            const emailInput = document.getElementById('txtEmail');
            const phoneInput = document.getElementById('txtPhone');
            const agreementCheckbox = document.getElementById('chkAgreement');

            // Error message elements
            const nameError = document.getElementById('nameError');
            const ageError = document.getElementById('ageError');
            const bloodGroupError = document.getElementById('bloodGroupError');
            const emailError = document.getElementById('emailError');
            const phoneError = document.getElementById('phoneError');
            const agreementError = document.getElementById('agreementError');

            // Validation Functions
            function validateName() {
                const name = nameInput.value.trim();
                if (name === '') {
                    nameError.textContent = 'Name is required';
                    return false;
                }
                if (name.length < 2) {
                    nameError.textContent = 'Name must be at least 2 characters long';
                    return false;
                }
                nameError.textContent = '';
                return true;
            }

            function validateAge() {
                const age = ageInput.value;
                if (age === '') {
                    ageError.textContent = 'Age is required';
                    return false;
                }
                const parsedAge = parseInt(age);
                if (isNaN(parsedAge) || parsedAge < 17 || parsedAge > 65) {
                    ageError.textContent = 'Age must be between 17 and 65';
                    return false;
                }
                ageError.textContent = '';
                return true;
            }

            function validateBloodGroup() {
                if (bloodGroupSelect.value === '') {
                    bloodGroupError.textContent = 'Blood group is required';
                    return false;
                }
                bloodGroupError.textContent = '';
                return true;
            }

            function validateEmail() {
                const email = emailInput.value.trim();
                const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (email === '') {
                    emailError.textContent = 'Email is required';
                    return false;
                }
                if (!emailRegex.test(email)) {
                    emailError.textContent = 'Please enter a valid email address';
                    return false;
                }
                emailError.textContent = '';
                return true;
            }

            function validatePhone() {
                const phone = phoneInput.value.trim();
                const phoneRegex = /^[0-9]{10}$/;
                if (phone === '') {
                    phoneError.textContent = 'Phone number is required';
                    return false;
                }
                if (!phoneRegex.test(phone)) {
                    phoneError.textContent = 'Please enter a valid 10-digit phone number';
                    return false;
                }
                phoneError.textContent = '';
                return true;
            }

            function validateAgreement() {
                if (!agreementCheckbox.checked) {
                    agreementError.textContent = 'You must agree to the health eligibility statement';
                    return false;
                }
                agreementError.textContent = '';
                return true;
            }

            // Real-time validation
            nameInput.addEventListener('input', validateName);
            ageInput.addEventListener('input', validateAge);
            bloodGroupSelect.addEventListener('change', validateBloodGroup);
            emailInput.addEventListener('input', validateEmail);
            phoneInput.addEventListener('input', validatePhone);
            agreementCheckbox.addEventListener('change', validateAgreement);

            // Form Submission Handler
            form.addEventListener('submit', function (event) {
                event.preventDefault();

                // Validate all fields
                const isNameValid = validateName();
                const isAgeValid = validateAge();
                const isBloodGroupValid = validateBloodGroup();
                const isEmailValid = validateEmail();
                const isPhoneValid = validatePhone();
                const isAgreementValid = validateAgreement();

                // Check if all validations pass
                if (isNameValid && isAgeValid && isBloodGroupValid &&
                    isEmailValid && isPhoneValid && isAgreementValid) {
                    // If all validations pass, redirect to Thankyou.aspx
                    window.location.href = 'Thankyou.aspx';
                }
            });

            // Optional: Progress Bar Logic
            const formProgress = document.getElementById('formProgress');
            const formGroups = document.querySelectorAll('.form-group');

            function updateProgressBar() {
                const validFields = [
                    validateName(),
                    validateAge(),
                    validateBloodGroup(),
                    validateEmail(),
                    validatePhone(),
                    validateAgreement()
                ];

                const completedFields = validFields.filter(Boolean).length;
                const progressPercentage = (completedFields / validFields.length) * 100;

                formProgress.style.width = `${progressPercentage}%`;
            }

            // Add event listeners to update progress bar
            form.querySelectorAll('input, select, textarea').forEach(input => {
                input.addEventListener('input', updateProgressBar);
                input.addEventListener('change', updateProgressBar);
            });
        });
    </script>

</body>
  </html>