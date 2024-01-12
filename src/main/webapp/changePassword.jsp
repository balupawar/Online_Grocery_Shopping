
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>change Password</title>
</head>
<body>
<%
	String msg = request.getParameter("msg");
	if("notMatch".equals(msg)){
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%}else if("wrong".equals(msg)){ %>
<h3 class="alert">Your old Password is wrong!</h3>
<%}else if("done".equals(msg)){ %>
<h3 class="alert">Password change successfully!</h3>
<%}else if("invalid".equals(msg)){ %>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<form action="changePasswordAction.jsp" method="post">
<h3>Enter Old Password</h3>
 <input type="password" class="input-style" name="oldPassword" placeholder="Enter old password" required>
  <hr>
 <h3>Enter New Password</h3>
 <input type="password" class="input-style" name="newPassword" placeholder="Enter new password" required>
 <hr>
<h3>Enter Confirm Password</h3>
<input type="password" class="input-style" name="confirmPassword" placeholder="Enter confirm password" required>
<hr>
 <button class="button" type="submit"><i class='far fa-arrow-alt-circle-right'></i>Save</button>
</form>
</body>
<br><br><br>
</html>