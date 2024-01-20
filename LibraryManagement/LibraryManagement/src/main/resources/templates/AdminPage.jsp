<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .crudonusercss
        {
           margin-left: 600px;
        }
        .btn-1{
            color: white;
            background-color: aqua;
            height: 40px;
            width: 90px;
            border-radius: 5px;
        }
        .btn-2{
            color: white;
            background-color: green;
            height: 40px;
            width: 90px;
            border-radius: 5px;
        }
        .btn-3{
            color: white;
            background-color: red;
            height: 40px;
            width: 90px;
            border-radius: 5px;
        }
        .mySlides {display:none;}
    </style>
</head>
<body>

    <img class="mySlides" src="library2.jpg"  width="1500" height="500">
    <img class="mySlides" src="librarymana.jpg"  width="1500" height="500">
<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 1000); // Change image every 2 seconds
}
</script>

    <div class="crudonusercss">
        <br>
    <a href="searchpage"><button class="btn-1">searchBook</button></a>&nbsp&nbsp&nbsp&nbsp
    <a href="addnewbook"><button class="btn-2">AddnewBook</button></a>&nbsp&nbsp&nbsp
    <a href="removebook"><button class="btn-3">removeBook</button></a>&nbsp&nbsp&nbsp

    
    </div>
</body>
</html>