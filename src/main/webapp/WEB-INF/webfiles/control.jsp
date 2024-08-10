<%@page import="com.my.realpro.entity.OrgNagrik"%>
<%@page import="java.util.List"%>
<%@page import="com.my.realpro.entity.Nagrik"%>
<%@page import="javax.swing.text.StyledEditorKit.ForegroundAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="true"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Oath Portal Control Page</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background-color: #f0f8ff; /* Light blue background */
	margin: 0;
	padding: 0;
}

header {
	background-color: #4682b4; /* Steel blue */
	color: #fff;
	padding: 20px;
	text-align: center;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

header h1 {
	margin: 0;
	font-size: 2.5em;
	letter-spacing: 1px;
}

nav ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

nav ul li {
	display: inline;
	margin-right: 20px;
}

nav ul li a {
	color: #fff;
	text-decoration: none;
	font-weight: bold;
	transition: color 0.3s, text-decoration 0.3s;
}

nav ul li a:hover {
	color: #d0e0f0; /* Lighten on hover */
	text-decoration: underline;
}

aside {
	width: 250px;
	float: left;
	background-color: #e0ffff; /* Light cyan */
	padding: 20px;
	box-shadow: 2px 0 10px rgba(0, 0, 0, 0.2);
	height: calc(100vh - 70px);
	/* Full viewport height minus header and footer */
	overflow-y: auto;
}

aside ul {
	list-style-type: none;
	padding: 0;
	margin: 0;
}

aside ul li {
	margin-bottom: 20px;
}

aside ul li a {
	text-decoration: none;
	color: #333;
	font-weight: bold;
	transition: color 0.3s, background-color 0.3s;
	display: block;
	padding: 10px;
	border-radius: 5px;
}

aside ul li a:hover {
	color: #fff;
	background-color: #4682b4; /* Steel blue */
}

main {
	margin-left: 270px;
	padding: 20px;
	background-color: #ffffff; /* White background for main content */
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
	min-height: calc(100vh - 70px);
	/* Ensure main content has full height minus header and footer */
}

section {
	margin-bottom: 30px;
	padding: 20px;
	border-radius: 8px;
}

/* Background colors for sections */
#add-user {
	background-color: #dff0d8; /* Light green */
}

#manage-users {
	background-color: #d9edf7; /* Light blue */
}

#edit-oath {
	background-color: #fcf8e3; /* Light yellow */
}

#generate-certificate {
	background-color: #f5f5f5; /* Light gray */
}

#view-reports {
	background-color: #d0e9c6; /* Light olive green */
}

#update-settings {
	background-color: #f2dede; /* Light coral */
}

.table-buttons {
	margin-bottom: 20px;
	display: flex;
	gap: 10px;
}

.table-buttons button {
	background-color: #4682b4; /* Steel blue */
	color: #fff;
	border: none;
	padding: 12px 24px;
	cursor: pointer;
	border-radius: 8px;
	font-size: 1em;
	transition: background-color 0.3s, transform 0.2s;
}

.table-buttons button:hover {
	background-color: #315f7a; /* Darker blue on hover */
	transform: scale(1.05); /* Slight scale effect on hover */
}

table {
	width: 100%;
	border-collapse: separate;
	border-spacing: 0 10px;
	margin-top: 20px;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 12px;
	text-align: left;
}

th {
	background-color: #4682b4; /* Steel blue */
	color: #fff;
}

td {
	background-color: #fafafa; /* Light gray for table rows */
}

tr:nth-child(even) td {
	background-color: #f0f8ff; /* Alternating row color */
}

.download-btn {
	background-color: #ff4d4d; /* Red color */
	color: #fff;
	border: none;
	padding: 8px 16px;
	cursor: pointer;
	border-radius: 5px;
	font-size: 0.9em;
	transition: background-color 0.3s, transform 0.2s;
}

.download-btn:hover {
	background-color: #e60000; /* Darker red on hover */
	transform: scale(1.05); /* Slight scale effect on hover */
}

footer {
	clear: both;
	background-color: #4682b4; /* Steel blue */
	color: #fff;
	text-align: center;
	padding: 15px;
	position: fixed;
	bottom: 0;
	width: calc(100% - 2px); /* Full width minus border */
	border-top: 2px solid #315f7a; /* Darker blue top border */
}

.hidden {
	display: none;
}

/* Responsive Styles */
@media ( max-width : 768px) {
	aside {
		width: 100%;
		float: none;
		box-shadow: none;
		padding: 15px;
		height: auto;
		margin-bottom: 20px;
	}
	main {
		margin-left: 0;
		padding: 15px;
	}
	nav ul {
		display: flex;
		flex-direction: column;
		align-items: center;
	}
	nav ul li {
		display: block;
		margin-bottom: 10px;
	}
}

@media ( max-width : 480px) {
	header h1 {
		font-size: 1.8em;
	}
	.table-buttons button {
		padding: 8px 16px;
		font-size: 0.9em;
	}
	table th, table td {
		font-size: 0.9em;
		padding: 8px;
	}
	footer {
		font-size: 0.9em;
		padding: 10px;
	}
}
</style>
</head>

<body>
	<%
	List<Nagrik> list =(List)request.getAttribute("userData");
	List<OrgNagrik> list2 =(List) request.getAttribute("userData2");
	%>

	<header>
		<nav>
			<h1>Oath Portal Admin</h1>
			<ul>
				<li><a href="#user-management">User Management</a></li>
				<li><a href="#oath-management">Oath Management</a></li>
				<li><a href="#certificate-management">Certificate
						Management</a></li>
				<li><a href="#statistics">Statistics</a></li>
				<li><a href="#settings">Settings</a></li>
			<button	class="download-btn">LogOut</button>
			</ul>
		</nav>
	</header>
	<aside>
		<ul>
			<li><a href="#add-user">Add User</a></li>
			<li><a href="#manage-users">Manage Users</a></li>
			<li><a href="#edit-oath">Edit Oath</a></li>
			<li><a href="#generate-certificate">Generate Certificate</a></li>
			<li><a href="#view-reports">View Reports</a></li>
			<li><a href="#update-settings">Update Settings</a></li>
		</ul>
	</aside>
	<main>
		<section id="user-management">
			<h2>User Management</h2>
			<div class="table-buttons">
				<button onclick="showTable('table1')">Nagrik able</button>
				<button onclick="showTable('table2')">OrgNagrik Table</button>
			</div>
			<div id="table1" class="hidden">
				<h3>Table 1 Data</h3>
				<table>
					<thead>
						<tr>
							<th>Username</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>

						<!-- Example user details. These should be populated dynamically from the database -->
						<%
						for (int i = 0; i < list.size(); i++) {
						%>
						<tr>
							<td><%=list.get(i).getName()%></td>
							<td><%=list.get(i).getEmail()%></td>
							<td><button class="download-btn"
									onclick="downloadUser('JohnDoe')">Certificate</button></td>
						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			</div>
			<div id="table2" class="hidden">
				<h3>Table 2 Data</h3>
				<table>
					<thead>
						<tr>
							<th>Username</th>
							<th>Email</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<!-- Example user details. These should be populated dynamically from the database -->
						<%
						for (int i = 0; i < list2.size(); i++) {
						%>
						<tr>
							<td><%=list2.get(i).getName()%></td>
							<td><%=list2.get(i).getEmail()%></td>
							<td><button class="download-btn"
									onclick="downloadUser('JohnDoe')">Certificate</button></td>
						</tr>
						<%
						}
						%>

					</tbody>
				</table>
			</div>
		</section>
	</main>
	<footer>
		<p>Chitora Road, Near Badagaon Over Bridge, Ratwai, Gwalior, Madhya Pradesh 474006 || director@vikrantuniversity.ac.in || 1800 270 5155</p>
	</footer>
	<script>
		function showTable(tableId) {
			document.getElementById('table1').classList.add('hidden');
			document.getElementById('table2').classList.add('hidden');
			document.getElementById(tableId).classList.remove('hidden');
		}

		function downloadUser(username) {
			// Implement download functionality here
			alert('Download functionality for ' + username
					+ ' is not implemented.');
		}
	</script>
</body>
</html>
