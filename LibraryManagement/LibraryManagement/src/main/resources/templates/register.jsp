<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
.bodypart1
{
	width:45%;
	float:left;
}
.bodypart2
{
	width:45%;
	float:left;
	margin-top:35px;
	padding-top:35px;
	padding-left:145px;
}
h1
{
	text-align: center;
	background-color: yellow;
}
button
{
	background-color: skyblue;
	color:black;
	width:200px;
	height: 40px;
}
label
{
	font-size: 23px;
}
label2
{
	font-size: 21px;
	padding-left:20px;
}
.formcontrol
{
	width:150px;
	height:35px;
}
</style>
<title>Insert title here</title>
</head>
<body>
  <h1> Library Management System</h1>
  
  <div class="bodypart1">
   <img src="book.png"/>
  </div>
  <div class="bodypart2">
  <h2>REGISTER HERE  !.........</h2>
  <br><br><br>
  
 
	
	<form action="/LibraryManagement/register" method="post" th:object="${u}"> 
   <label>Username</label>&nbsp&nbsp<input type="text" name="username" class="formcontrol"><br><br>
   <label>Password</label>&nbsp&nbsp<input type="password" name="password" class="formcontrol"><br><br><br>
   <button type="submit">Register</button>
   </form>
   
   
   
   <br><br>
    <label2>ExistingUser?<a href="./login">Login</a>here<label2>
  </div>
  
</body>
</html>