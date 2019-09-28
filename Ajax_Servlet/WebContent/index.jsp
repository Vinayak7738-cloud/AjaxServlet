<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
  src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous">
 </script>
 
 <script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
 
 <script type="text/javascript">
 $(document).ready(function(){
	 $('#register').click(function(event){
		 
		 var name = $('#name').val();
		 var email = $('#email').val();
		 var password = $('#password').val();
		 var address = $('#address').val();
		 
		 $.ajax({
			 type: 'POST',
			 url:'Register',
			 data: {name : name, email : email, password : password, address : address },
			 success : function(result)
				 {
				 	$('#result1').html(result);
				 }
				 
		 });
	 });
 });
 
 </script>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<span id="result1">
</span>
<form id="Registration" action="post">
Name: <input type="text" id="name" name="name"/><br/>

Email Id:  <input type="text" id="email" name="email"/><br/>

Password :  <input type="password" id="password" name="password"/><br/>

Address: <input type="text" id="address" name="address"/><br/>

<input type="button" id="register" value="register"/>
</form>
</body>
</html>