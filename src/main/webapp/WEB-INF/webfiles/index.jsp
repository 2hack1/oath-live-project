<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Integrity Pledge</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Arial:wght@400;700&display=swap');

        body {
            font-family: Arial, sans-serif;
            background-color: #87CEEB; /* Light blue background color */
            color: #333; /* Dark text color */
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px;
            background-color: #4682B4; /* Steel blue background color for header */
        }

        .header-container .emblem,
        .header-container .logo {
            width: 80px;
        }

        .header-text {
            text-align: center;
            line-height: 1.5;
            color: white;
        }

        .header-text h1 {
            margin: 0;
            font-size: 24px;
        }

        .header-text h2 {
            margin: 5px 0;
            font-size: 20px;
        }

        .header-text p {
            margin: 5px 0;
            font-size: 16px;
        }

        main {
            background-color: white; /* White background color for main content */
            color: #333; /* Dark color for text */
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 20px auto;
            width: 90%;
            max-width: 1200px;
        }

        .pledge {
            margin: 50px 0;
        }

        .pledge h1, .pledge h2 {
            margin: 10px 0;
            font-size: 28px;
            font-weight: bold;
        }

        .pledge-options {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 20px 0;
        }

        a {
            text-decoration: none; /* Remove underline from links */
            color: inherit; /* Use the color of the parent element */
        }

        .pledge-button {
            background-color: #32CD32;
            border: none;
            padding: 15px;
            font-size: 18px;
            cursor: pointer;
            margin: 10px;
            color: white;
            text-decoration: none; /* Ensure no underline on buttons */
            width: 250px;
            height: 100px;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            transition: background-color 0.3s;
            border-radius: 8px;
        }

        .pledge-button:hover {
            background-color: #28a828; /* Slightly darker green */
        }

        .pledge-button.organization {
            background-color: #FF8C00;
        }

        .pledge-button.organization:hover {
            background-color: #e67600; /* Slightly darker orange */
        }

        .steps {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 20px 0;
        }

        .step {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 10px;
            width: 200px;
            text-align: center;
            font-size: 16px;
            line-height: 1.5;
        }

        .step-number {
            font-size: 18px;
            font-weight: bold;
            border: 2px solid #333;
            border-radius: 50%;
            width: 40px;
            height: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
            background-color: transparent;
            margin-bottom: 10px;
        }

        .step-number::before,
        .step-number::after {
            content: '';
            position: absolute;
            top: 50%;
            width: 20px;
            height: 2px;
            background: #333;
        }

        .step:first-child .step-number::before {
            display: none;
        }

        .step:last-child .step-number::after {
            display: none;
        }

        .step .step-number::before {
            left: -20px;
        }

        .step .step-number::after {
            right: -20px;
        }

        footer {
            background-color: #4682B4; /* Steel blue background color for footer */
            padding: 20px 0;
        }

        footer p {
            font-size: 16px;
            margin: 10px 0;
            color: white;
        }

        .footer-buttons {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 20px 0;
        }

        .footer-button {
            background-color: transparent;
            border: 2px solid white;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            margin: 10px;
            color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: background-color 0.3s, color 0.3s;
            border-radius: 8px;
            text-decoration: none; /* Ensure no underline on footer buttons */
        }

        .footer-button:hover {
            background-color: white;
            color: #4682B4;
        }

        .footer-icon {
            width: 20px;
            height: 20px;
            margin-right: 10px;
        }

        .footer-buttons span {
            font-size: 20px;
            font-weight: bold;
            color: white;
        }

        @media (max-width: 768px) {
            .header-container {
                flex-direction: column;
                align-items: center;
                text-align: center;
            }

            .header-container .emblem,
            .header-container .logo {
                width: 60px;
            }

            .pledge-button {
                width: 200px;
                height: 80px;
                font-size: 16px;
                padding: 10px;
            }

            .steps {
                flex-direction: column;
            }

            .step {
                width: 80%;
            }
        }

        @media (max-width: 480px) {
            .header-container {
                padding: 10px;
            }

            .header-text h1, .header-text h2, .header-text p {
                font-size: 16px;
            }

            .pledge h1, .pledge h2 {
                font-size: 24px;
            }

            .pledge-button {
                width: 180px;
                height: 70px;
                font-size: 14px;
            }

            .steps .step {
                width: 90%;
            }

            footer p {
                font-size: 14px;
            }

            .footer-button {
                font-size: 14px;
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <header>
        <div class="header-container">
            <img src="/image/vk.jpg" alt="Emblem" class="emblem">
            <div class="header-text">
                <h1>केन्द्रीय सतर्कता आयोग</h1>
                <h2>CENTRAL VIGILANCE COMMISSION</h2>
                <p>भ्रष्टाचार का विरोध करें; राष्ट्र के प्रति समर्पित रहें</p>
                <p>SAY NO TO CORRUPTION; COMMIT TO THE NATION</p>
            </div>
            <img src="../image/vk.png" alt="Logo" class="logo">
        </div>
    </header>
    <main>
        <section class="pledge">
            <h1>सत्यनिष्ठा प्रतिज्ञा</h1>
            <h2>INTEGRITY PLEDGE</h2>
            <div class="pledge-options">
                <a href="/Real_Time_Project_01/nagrik-form">
                    <button class="pledge-button citizen">एक नागरिक के रूप में<br>AS A CITIZEN</button>
                </a>
                <span>OR</span>
                <a href="/Real_Time_Project_01/orgNagrik-form">
                    <button class="pledge-button organization">एक संगठन के रूप में<br>AS AN ORGANIZATION</button>
                </a>
            </div>
            <p>प्रतिज्ञा तीन आसान चरणों में लें<br>TAKE PLEDGE IN THREE EASY STEPS</p>
            <div class="steps">
                <div class="step">
                    <div class="step-number">1</div>
                    <div class="step-text">बुनियादी विवरण दर्ज कीजिये<br>ENTER BASIC DETAILS</div>
                </div>
                <div class="step">
                    <div class="step-number">2</div>
                    <div class="step-text">प्रतिज्ञा की भाषा चुनिये<br>SELECT PLEDGE LANGUAGE</div>
                </div>
                <div class="step">
                    <div class="step-number">3</div>
                    <div class="step-text">पढ़ें और प्रतिज्ञा लें<br>READ & TAKE PLEDGE</div>
                </div>
            </div>
        </section>
    </main>
   <footer>
        <p>यदि प्रतिज्ञा पहले ही ले ली है तो वचनबद्धता का प्रमाण पत्र प्राप्त करें | If already taken Pledge, Get the Certificate of Commitment</p>
        <div class="footer-buttons">
            <button class="footer-button email">
                <img src="https://img.icons8.com/ios-filled/50/FFFFFF/email.png" alt="Email Logo" class="footer-icon">
                प्रमाण पत्र अपने ई-मेल/मोबाइल पर भेजे<br>Send certificate to your Email/Mobile
            </button>
            <span>OR</span>
            <a href="/Real_Time_Project_01/loginForm">
                <button class="footer-button download">
                    <img src="https://img.icons8.com/ios-filled/50/FFFFFF/download-from-cloud.png" alt="Download Logo" class="footer-icon">
                    प्रमाण पत्र डाउनलोड करें<br>Download Certificate
                </button>
            </a>
        </div>
        <p>Chitora Road, Near Badagaon Over Bridge, Ratwai, Gwalior, Madhya Pradesh 474006 || director@vikrantuniversity.ac.in || 1800 270 5155</p>
        <p><b>create by -></b></p>
    </footer>
</body>
</html>

    