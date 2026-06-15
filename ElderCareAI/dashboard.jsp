<%
if(session.getAttribute("user")==null){

response.sendRedirect("login.jsp");

}
%>

<!DOCTYPE html>
<html>

<head>

<title>Dashboard</title>

<link rel="stylesheet" href="css/dashboard.css">

</head>

<body>

<div class="dashboard">

<div class="sidebar">

<h2>ElderCare AI</h2>

<a href="dashboard.jsp">Dashboard</a>
<a href="medicine.jsp">Medicine Reminder</a>
<a href="water.jsp">Water Reminder</a>
<a href="notes.jsp">Health Notes</a>
<a href="family.jsp">Family Contacts</a>
<a href="sos.jsp">Emergency SOS</a>
<a href="profile.jsp">Profile</a>
<a href="logout.jsp">Logout</a>

</div>

<div class="main-content">

<h1>Welcome to ElderCare Dashboard</h1>

<br>

<div class="cards">

<div class="card">

<h3>Medicine Reminder</h3>

<p>Manage daily medicines.</p>

</div>

<div class="card">

<h3>Emergency Support</h3>

<p>Quick SOS access.</p>

</div>

<div class="card">

<h3>Health Notes</h3>

<p>Store BP and sugar notes.</p>

</div>

<div class="card">

<h3>Water Reminder</h3>

<p>Track water intake.</p>

</div>

</div>

</div>

</div>

</body>

</html>