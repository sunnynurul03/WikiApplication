<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <style>
     .container-fluid{
                            background-color :#00FFFF ;
                            height :50px;
                        }
                  .row{
	             background-color : lavender;
	             height :600px;
	           }
         
	      .text{
	            background-color :#A9A9A9;
	             height :50px;
	             width : 100%;
	       }
	       
       .col1{
	         border-style: solid;
	         margin: 3px;
			 min-height : 300px;
			 background-color:#5F9EA0;
			 padding : 7px;
}
	 
	.col3{ 
	         border-style: solid;
	         margin: 3px;
			 min-height : 450px;
			 background-color:#5F9EA0;
            
}
	
  </style>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">
      <b style="color:white;">CUNY<i style="color:yellow;">blackboard</i></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="http://localhost:8080/WikiApplication/user/page">Home</a></li>
      <li><a href="http://localhost:8080/WikiApplication/user/page/help">Help</a></li>
      <li><a href="http://localhost:8080/WikiApplication/user/page/brooklynCollege">Brooklyn College</a></li>
      <li><a href="#">BC Library</a></li>
      <li><a href="http://localhost:8080/WikiApplication/user/page/resources">Blackboard Resources</a></li>
       <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWelcome, ${user.name}</li>
      <li> <a href='<spring:url value="/l-out"/>'>Logout</a></li>
        </a> 
      
    </ul>
  </div>
</nav> 
 <div class="container">
	   <div class="row"><br>
	       <div class="col-md-3">
		     <div class="col1">
		        <h4 style="text-align:center;"></h4>
		        <hr>
		        
		     </div>
		  </div>
		  <div class="col-md-9">
		     <div class="col3">
		        <div class="text">
		        <h2>Announcments</h2>
		         
		          
		        </div> 
		      
		     </div>
		  </div>
		 </div>
		 </div>

</body>

</html>
