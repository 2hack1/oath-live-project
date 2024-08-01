<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
            background: #87CEEB; /* Light blue background color */
        }
        header {
            width: 100%;
            background-color: #4682B4; /* Steel blue background color for header */
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
            margin: 0 auto;
        }
        .container h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            font-size: 16px;
            margin-bottom: 5px;
            color: #555;
        }
        .form-group input,
        .form-group select {
            width: calc(100% - 20px);
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-sizing: border-box;
        }
        .button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 18px;
            color: #fff;
            background-color: #28a745;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            text-decoration: none;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        .button:hover {
            background-color: #218838;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }
        .forgot-password {
            margin-top: 20px;
        }
        .forgot-password a {
            color: #007bff;
            text-decoration: none;
        }
        .forgot-password a:hover {
            text-decoration: underline;
        }
        .show-password {
            margin-top: 10px;
            text-align: left;
        }
        .show-password label {
            font-size: 14px;
            color: #555;
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
            color: #333; /* Dark color for text */
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
        .step:first-child .step-number {
            background-color: #32CD32; /* Green background color for first step */
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
    </style>
</head>
<body>
<%String nagrikMatch=(String)request.getAttribute("nagrikMatch"); %>
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
     <h2 style="color:red;"><%=nagrikMatch %></h2>
        <h1>Register</h1>
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
        <form action="nagrikData" method="post">
          <div class="form-group">
          
                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder="Enter your password" required>
            </div>

            <div class="form-group">
                <label for="zip-code">Zip Code</label>
                <input type="text" id="zip-code" name="zip_code" placeholder="Enter your zip code" required>
            </div>
            <div class="form-group">
                <label for="state">State</label>
                <select id="state" name="state" required>
                    <!-- Options will be populated by JavaScript -->
                </select>
            </div>
            <div class="form-group">
                <label for="city">City</label>
                <select id="city" name="city" required>
                    <!-- Options will be populated based on selected state -->
                </select>
            </div>
            <div class="form-group">
                <label for="pin-code">Pin Code</label>
                <input type="text" id="pin-code" name="pin_code" placeholder="Enter your pin code" required>
            </div>
            <div class="form-group">
                <label for="gender">Gender</label> <select id="gender" name="gender" required>
					<option value="">Select Gender</option>
					<option value="male">Male</option>
					<option value="female">Female</option>
					<option value="other">Other</option>
				</select>
			</div>
                        <div class="show-password">
                <input type="checkbox" id="show-password">
                <label for="show-password">Show Password</label>
            </div>
            <button type="submit" class="button">Submit</button>
        </form>
        <div class="forgot-password">
            <a href="forgot_password.html">Forgot Password?</a>
        </div>
    </div>
    <script>
        // States and Cities Data
        const states = {
            "Andhra Pradesh": ["Hyderabad", "Vijayawada", "Visakhapatnam", "Guntur", "Nellore", "Kakinada", "Rajahmundry", "Anantapur", "Tirupati", "Kadapa","other"],
            "Arunachal Pradesh": ["Itanagar", "Tawang", "Naharlagun", "Bomdila", "Ziro", "Pasighat", "Aalo", "Tezu", "Namsai", "Tirap","other"],
            "Assam": ["Guwahati", "Dibrugarh", "Silchar", "Jorhat", "Nagaon", "Bongaigaon", "Karimganj", "Tezpur", "Sivasagar", "Haflong","other"],
            "Bihar": ["Patna", "Gaya", "Bhagalpur", "Muzaffarpur", "Darbhanga", "Purnia", "Munger", "Samastipur", "Arrah", "Sasaram","other"],
            "Chhattisgarh": ["Raipur", "Bilaspur", "Korba", "Durg", "Jagdalpur", "Raigarh", "Ambikapur", "Bhilai", "Kanker", "Rajnandgaon","other"],
            "Goa": ["Panaji", "Margao", "Vasco da Gama", "Mapusa", "Ponda", "Quepem", "Sanguem", "Canacona", "Bicholim", "Cortalim","other"],
            "Gujarat": ["Ahmedabad", "Surat", "Vadodara", "Rajkot", "Bhavnagar", "Junagadh", "Gandhinagar", "Amreli", "Navsari", "Anand","other"],
            "Haryana": ["Chandigarh", "Gurgaon", "Faridabad", "Hisar", "Karnal", "Ambala", "Rohtak", "Panipat", "Jind", "Sirsa","other"],
            "Himachal Pradesh": ["Shimla", "Manali", "Dharamshala", "Kangra", "Mandi", "Solan", "Hamirpur", "Bilaspur", "Kullu", "Nahan","other"],
            "Jharkhand": ["Ranchi", "Jamshedpur", "Dhanbad", "Hazaribagh", "Bokaro", "Deoghar", "Giridih", "Chaibasa", "Daltonganj", "Koderma","other"],
            "Karnataka": ["Bangalore", "Mysore", "Hubli", "Dharwad", "Belgaum", "Mangalore", "Tumkur", "Raichur", "Bagalkot", "Chitradurga","other"],
            "Kerala": ["Thiruvananthapuram", "Kochi", "Kozhikode", "Kollam", "Thrissur", "Alappuzha", "Kannur", "Palakkad", "Malappuram", "Idukki","other"],
            "Madhya Pradesh": ["Bhopal", "Indore", "Gwalior", "Jabalpur", "Ujjain", "Sagar", "Satna", "Ratlam", "Khandwa", "Hoshangabad","other"],
            "Maharashtra": ["Mumbai", "Pune", "Nagpur", "Aurangabad", "Nashik", "Thane", "Kolhapur", "Solapur", "Satara", "Amravati","other"],
            "Manipur": ["Imphal", "Churachandpur", "Thoubal", "Ukhrul", "Bishnupur", "Jiribam", "Kakching", "Senapati", "Tamenglong", "Chandel","other"],
            "Meghalaya": ["Shillong", "Tura", "Jowai", "Bhoi", "West Khasi Hills", "East Khasi Hills", "Ri-Bhoi", "South Garo Hills", "North Garo Hills", "West Jaintia Hills","other"],
            "Mizoram": ["Aizawl", "Lunglei", "Saiha", "Champhai", "Kolasib", "Mamit", "Serchhip", "Lawngtlai", "Hnahthial", "Lunglei","other"],
            "Nagaland": ["Kohima", "Dimapur", "Mokokchung", "Wokha", "Tuensang", "Zunheboto", "Phek", "Mon", "Kiphire", "Longleng","other"],
            "Odisha": ["Bhubaneswar", "Cuttack", "Rourkela", "Berhampur", "Sambalpur", "Balasore", "Kendrapara", "Jeypore", "Koraput", "Angul","other"],
            "Puducherry": ["Puducherry", "Karaikal", "Mahe", "Yanam","other"],
            "Punjab": ["Chandigarh", "Amritsar", "Ludhiana", "Jalandhar", "Patiala", "Bathinda", "Mohali", "Moga", "Hoshiarpur", "Ferozepur","other"],
            "Rajasthan": ["Jaipur", "Udaipur", "Jodhpur", "Kota", "Ajmer", "Bikaner", "Alwar", "Sikar", "Jhunjhunu", "Pali","other"],
            "Sikkim": ["Gangtok", "Namchi", "Pakyong", "Mangan", "Gyalshing", "Rangpo", "Rangrang", "Soreng", "Yuksom", "Pemayangtse","other"],
            "Tamil Nadu": ["Chennai", "Coimbatore", "Madurai", "Tiruchirappalli", "Salem", "Tirunelveli", "Erode", "Vellore", "Kanchipuram", "Thanjavur","other"],
            "Telangana": ["Hyderabad", "Warangal", "Khammam", "Nizamabad", "Karimnagar", "Mahbubnagar", "Nalgonda", "Medak", "Adilabad", "Rangareddy","other"],
            "Tripura": ["Agartala", "Udaipur", "Kailashahar", "Dharmanagar", "Belonia", "Ambassa", "Khowai", "Sadar", "Sepahijala", "West Tripura","other"],
            "Uttar Pradesh": ["Lucknow", "Kanpur", "Varanasi", "Agra", "Meerut", "Bareilly", "Allahabad", "Aligarh", "Ghaziabad", "Moradabad","other"],
            "Uttarakhand": ["Dehradun", "Haridwar", "Nainital", "Roorkee", "Haldwani", "Rudrapur", "Kotdwar", "Mussoorie", "Pauri", "Almora","other"],
            "West Bengal": ["Kolkata", "Darjeeling", "Siliguri", "Asansol", "Howrah", "Durgapur", "Kharagpur", "Jalpaiguri", "Medinipur", "Malda","other"]
        };

        const stateSelect = document.getElementById('state');
        const citySelect = document.getElementById('city');

        // Populate state options
        Object.keys(states).forEach(state => {
            const option = document.createElement('option');
            option.value = state;
            option.textContent = state;
            stateSelect.appendChild(option);
        });

        // Update cities based on selected state
        stateSelect.addEventListener('change', function() {
            const selectedState = this.value;
            const cities = states[selectedState] || [];
            
            citySelect.innerHTML = '<option value="">Select City</option>'; // Clear existing options
            cities.forEach(city => {
                const option = document.createElement('option');
                option.value = city.toLowerCase().replace(/ /g, '-');
                option.textContent = city;
                citySelect.appendChild(option);
            });
        });

        // Show/Hide password functionality
        document.getElementById('show-password').addEventListener('change', function() {
            var passwordField = document.getElementById('password');
            if (this.checked) {
                passwordField.type = 'text';
            } else {
                passwordField.type = 'password';
            }
        });
    </script>
</body>
</html>




