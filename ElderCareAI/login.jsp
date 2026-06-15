<%@ include file="db.jsp" %>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

if(email != null && password != null){

PreparedStatement ps = con.prepareStatement(
"SELECT * FROM users WHERE email=? AND password=?"
);

ps.setString(1,email);
ps.setString(2,password);

ResultSet rs = ps.executeQuery();

if(rs.next()){

session.setAttribute("user",email);

response.sendRedirect("dashboard.jsp");

}
else{

out.println("<script>alert('Invalid Login');</script>");

}

}
%>

<!DOCTYPE html>
<html>

<head>

<title>Login</title>

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">

</head>

<body>

<div class="navbar">

<div class="logo">
ElderCare AI
</div>

<div class="nav-links">

<a href="index.jsp">Home</a>
<a href="register.jsp">Register</a>

</div>

</div>

<div class="form-container">

<h1>User Login</h1>

<form method="post">

<input type="email"
name="email"
placeholder="Enter Email"
class="input-box"
required>

<input type="password"
name="password"
placeholder="Enter Password"
class="input-box"
required>

<button type="submit" class="submit-btn">
Login
</button>

</form>

</div>

</body>

</html>