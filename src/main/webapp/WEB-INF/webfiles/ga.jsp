<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form with Oath</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
        }
        header {
            width: 100%;
            background-color: #4682B4;
            padding: 20px 0;
            text-align: center;
            color: white;
            margin-bottom: 20px;
        }
        .header-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 0 20px;
        }
        .header-container .emblem,
        .header-container .logo {
            width: 100px;
        }
        .header-text {
            text-align: center;
            line-height: 1.5;
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
        .container {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 600px;
            text-align: center;
            margin-top: 20px;
            margin-bottom: 20px; /* Added bottom margin */
        }
        .container h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
        }
        .container p {
            font-size: 20px;
            color: #555;
            text-align: left;
            margin-bottom: 20px;
            display: none; /* Initially hidden */
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .button-group {
            margin: 20px 0;
        }
        .button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
            margin: 10px;
        }
        .button:hover {
            background-color: #0056b3;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .submit-button {
            display: none; /* Hidden by default */
        }
        .stop-button {
            display: none; /* Hidden by default */
        }
        .steps {
            display: flex;
            justify-content: center;
            margin: 20px 0;
            position: relative;
        }
        .step {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 0 20px;
            width: 200px;
            text-align: center;
            font-size: 16px;
            line-height: 1.5;
            position: relative;
            color: #333;
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
        .step:nth-child(-n+2) .step-number {
            background-color: #32CD32;
            color: white;
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
        .checkbox-group {
            margin: 20px 0;
            text-align: left;
            display: none; /* Initially hidden */
        }
        .checkbox-group input[type="checkbox"] {
            margin-right: 10px;
        }
        .highlight {
            background-color: yellow;
        }
    </style>
</head>
<body>
    <header>
        <div class="header-container">
            <img src="vk.png" alt="Emblem" class="emblem">
            <div class="header-text">
                <h1>केन्द्रीय सतर्कता आयोग</h1>
                <h2>CENTRAL VIGILANCE COMMISSION</h2>
                <p>भ्रष्टाचार का विरोध करें; राष्ट्र के प्रति समर्पित रहें</p>
                <p>SAY NO TO CORRUPTION; COMMIT TO THE NATION</p>
            </div>
            <img src="vk.png" alt="Logo" class="logo">
        </div>
    </header>

    <div class="container">
        <h1>Oath Registration</h1>
        
        <div class="steps">
            <div class="step">
                <div class="step-number">1</div>
                <div class="step-text">बुनियादी विवरण दर्ज कीजिये<br>ENTER BASIC DETAILS</div>
            </div>
            <div class="step">
                <div class="step-number">2</div>
                <div class="step-text">भाषा चुनें और शपथ ले<br>CHOOSE LANGUAGE AND TAKE OATH</div>
            </div>
            <div class="step">
                <div class="step-number">3</div>
                <div class="step-text">सर्टिफिकेट प्राप्त करें<br>GET CERTIFICATE</div>
            </div>
        </div>

        <p id="oath-text"></p>

        <div class="checkbox-group" id="checkbox-group">
            <input type="checkbox" id="agree" name="agree">
            <label for="agree">I agree to the oath</label>
        </div>

        <div class="button-group">
            <button class="button" id="hindi-button" onclick="showOath('hindi')">Hindi में सुनें</button>
            <button class="button" id="english-button" onclick="showOath('english')">Listen in English</button>
            <button class="button stop-button" onclick="toggleSpeech()">Stop</button>
         <a href="/Real_Time_Project_01/oathSubmit"><button type="submit" class="button submit-button">Submit</button></a>
        </div>
    </div>

    <script>
        const hindiOath = "हम प्रतिज्ञा करते हैं कि हम ग्वालियर शहर की सड़कों, मैदानों एवं भवनों आदि पर कूड़ा नहीं फेंकेंगे, बल्कि कूड़ेदान में ही कूड़ा डालकर 'उमुगंडा-सामुदायिक स्वच्छता अभियान' को सफल बनाएंगे।";
        const englishOath = "We pledge that we will not throw garbage on the roads, grounds and buildings etc. of Gwalior city, but will make 'Umuganda - Community Cleanliness Campaign' successful by throwing the garbage only in the dustbin.";
        let isSpeaking = false;
        let utterance;

        function showOath(language) {
            const oathText = document.getElementById('oath-text');
            const checkboxGroup = document.getElementById('checkbox-group');
            const hindiButton = document.getElementById('hindi-button');
            const englishButton = document.getElementById('english-button');
            const stopButton = document.querySelector('.stop-button');
            const submitButton = document.querySelector('.submit-button');
            const text = language === 'hindi' ? hindiOath : englishOath;
            oathText.innerText = text;
            oathText.style.display = 'block';
            checkboxGroup.style.display = 'block'; // Show the checkbox
            stopButton.style.display = 'inline-block'; // Show the stop button
      
            if (language === 'hindi') {
                englishButton.style.display = 'none';
                hindiButton.style.display = 'none';
            } else {
                hindiButton.style.display = 'none';
                englishButton.style.display = 'none';
            }

            readOath(text, language === 'hindi' ? 'hi-IN' : 'en-US');
        }

        function readOath(text, lang) {
            utterance = new SpeechSynthesisUtterance(text);
            utterance.lang = lang;
            utterance.onboundary = function(event) {
                highlightText(event.charIndex, text);
            };
            speechSynthesis.speak(utterance);
            isSpeaking = true;
        }

        function highlightText(charIndex, text) {
            const oathText = document.getElementById('oath-text');
            const highlightedText = text.substring(0, charIndex) + '<span class="highlight">' + text.substring(charIndex) + '</span>';
            oathText.innerHTML = highlightedText;
        }

        function toggleSpeech() {
            if (isSpeaking) {
                speechSynthesis.cancel();
                isSpeaking = false;
            } else {
                const oathText = document.getElementById('oath-text').innerText;
                const language = oathText.includes('हम') ? 'hi-IN' : 'en-US';
                readOath(oathText, language);
                isSpeaking = true;
            }
        }

        document.getElementById('agree').addEventListener('change', function() {
            const submitButton = document.querySelector('.submit-button');
            submitButton.style.display = this.checked ? 'inline-block' : 'none';
        });
    </script>
</body>
</html>
