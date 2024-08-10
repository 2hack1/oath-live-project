<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Oath Certificate</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Great+Vibes&family=Open+Sans:wght@400;700&display=swap');
        body {
            font-family: 'Open Sans', sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            margin: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px; /* Ensure padding for small screens */
            box-sizing: border-box;
        }

        .container {
            background: #fff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 800px;
            text-align: center;
            box-sizing: border-box;
        }

        .certificate {
            border: 10px solid #d4af37;
            padding: 20px;
            border-radius: 12px;
            margin-top: 20px;
            text-align: center;
            background: #f7f7f7;
            background-image: url('https://www.toptal.com/designers/subtlepatterns/patterns/diagonal_striped_brick.png');
            background-size: cover;
            position: relative;
            overflow: hidden;
            padding-top: 66px;
            padding-bottom: 150px; /* Added padding to avoid overlap */
            box-sizing: border-box;
        }

        .certificate h2 {
            font-family: 'Great Vibes', cursive;
            font-size: 2.5em;
            margin-top: 0;
            color: #d4af37;
        }

        .certificate p {
            margin: 10px 0;
            font-size: 1.1em;
        }

        .certificate .oath {
            margin: 10px 0;
            line-height: 1.8; /* Adjust line height for spacing between lines */
        }

        .certificate .name {
            font-size: 1.5em;
            font-weight: bold;
            color: #d4af37;
        }

        .certificate .email {
            font-size: 1.2em;
            font-style: italic;
            color: #333;
        }

        .certificate .date {
            position: absolute;
            top: 20px;
            right: 20px;
            font-family: 'Open Sans', sans-serif;
            font-size: 1.2em;
            color: #333;
        }

        .certificate .static-number {
            position: absolute;
            top: 20px;
            left: 20px;
            font-family: 'Open Sans', sans-serif;
            font-size: 1.2em;
            color: #333;
        }

        .certificate .director-signature {
            position: absolute;
               bottom:2rem;
                 right: 20px;
            text-align: right;
        }

        .certificate .director-signature p {
            margin: 0;
          /*  margin-bottom: 20px;*/ /* Space between Director title and signature */
        }

        .certificate .director-signature .signature {
           
            font-family: 'Great Vibes', cursive;
            font-size: 1.5em;
            color: #d4af37;
            margin-bottom: 40px; /* Space between signature and Director title */
        }

        .certificate .seal {
            bottom: 20px;
            right: 120px;
            width: 100px;
            height: 100px;
            background: url('https://upload.wikimedia.org/wikipedia/commons/e/eb/Gold_Seal_Vector.svg') no-repeat center center;
            background-size: contain;
            opacity: 0.8;
        }

        .certificate .logo1,
        .certificate .logo2 {
            position: absolute;
            bottom: 20px;
            width: 100px;
            height: 100px;
            background-size: contain;
            background-repeat: no-repeat;
        }

        .certificate .logo1 {
            left: 20px;
            border-radius: 50%;
            background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqOLLQ9hAOSAhDu6viwcuO4cUxWgeKXo52Ug&s'); /* Replace with your logo image URL */
        }

        .certificate .logo2 {
            left: 140px;
            background-image: url(''); /* Replace with your logo image URL */
        }

        .print-button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #28a745;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
            margin-top: 10px;
        }

        .print-button:hover {
            background-color: #218838;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        @media (max-width: 600px) {
            .container {
                padding: 20px;
            }

            .certificate {
                padding: 10px;
                padding-bottom: 120px; /* Adjust padding for smaller screens */
            }

            .certificate h2 {
                font-size: 2em;
            }

            .certificate p {
                font-size: 1em;
            }


            .certificate .name {
                font-size: 1.2em;
            }

            .certificate .email {
                font-size: 1em;
            }

            .certificate .date,
            .certificate .static-number {
                font-size: 1em;
            }

            .certificate .director-signature .signature {
                font-size: 1.2em;
            }

            .certificate .seal {
                width: 80px;
                height: 80px;
                right: 120px; /* Adjust position for smaller screens */
            }

            .certificate .logo1,
            .certificate .logo2 {
                width: 80px;
                height: 80px;
            }
 

            .certificate .logo2 {
                left: 110px; /* Adjust position for smaller screens */
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="certificate" id="certificate">
            <div>
                <div class="static-number">REF-0666-00<%= request.getAttribute("id") %></div>
                <div class="date" id="currentDate"></div>
                <br/>
            </div>
            <h2>Certificate of Oath</h2>
            <p>This is to certify that</p>
            <p class="name"><%= request.getAttribute("name") %></p>
            <p>with the email address</p>
            <p class="email"><%= request.getAttribute("email") %></p>
            <p>has taken the following oath:</p>
            <p class="oath">
                हम प्रतिज्ञा करते हैं कि हम ग्वालियर शहर की सड़कों, मैदानों एवं भवनों आदि पर कूड़ा नहीं फेंकेंगे, बल्कि कूड़ेदान में ही कूड़ा डालकर 'उमुगंडा-सामुदायिक स्वच्छता अभियान' को सफल बनाएंगे।<br>
                We pledge that we will not throw garbage on the roads, grounds and buildings etc. of Gwalior city, but will make 'Umuganda - Community Cleanliness Campaign' successful by throwing the garbage only in the dustbin.
            </p>
            <div class="director-signature">
              <p>Director of Vikrant University</p>
           <div class="signature"><b>Kapil Agrawal</b></div>
                           </div>
            <div class="seal"></div>
            <div class="logo1"></div>
            <div class="logo2"></div>
        </div>
        <button class="print-button" onclick="printCertificate()">Print Certificate</button>
    </div>

    <script>
        function printCertificate() {
            const printContents = document.getElementById('certificate').outerHTML;
            const originalContents = document.body.innerHTML;

            document.body.innerHTML = printContents;
            window.print();
            document.body.innerHTML = originalContents;
            window.location.reload(); // Reload the page to restore original content
        }

        function updateDate() {
            const currentDate = new Date();
            const formattedDate = currentDate.toLocaleDateString('en-GB', {
                day: 'numeric',
                month: 'long',
                year: 'numeric'
            });
            document.getElementById('currentDate').innerText = `Date: ${formattedDate}`;
        }

        window.onload = updateDate;
    </script>
</body>
</html>




    

