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
             li{
                color : black;
             }
             .row{
	             background-color : lavender;
	           }
	  .container{
	              padding: 15px;
	            }
	  .col1{
	         border-style: solid;
	         margin: 3px;
			 min-height : 400px;
			 background-color:#5F9EA0;
			 padding : 7px;
}
	 .col2{
	         border-style: solid;
	         margin: 3px;
			 min-height : 130px;
			 background-color:#5F9EA0;
			 padding : 7px;
}
	.col3{ 
	         border-style: solid;
	         margin: 3px;
			 min-height : 300px;
			  background-color:#5F9EA0;
			 padding : 7px;
}
	       }
	   .col4{
	         border-style: solid;
	         margin: 3px;
			 min-height : 130px;
			 background-color:#5F9EA0;
			 padding : 7px;
}
	 .col5{
	         border-style: solid;
	         margin: 3px;
			 min-height : 200px;
			 background-color:#5F9EA0;
			 padding : 7px;
}
	.col6{
	         border-style: solid;
	         margin: 3px;
			 min-height : 150px;
			 background-color:#5F9EA0;
			 padding : 7px;
	       }
	  .col7{
	         border-style: solid;
	         margin: 3px;
	         min-height : 130px;
			 background-color:#5F9EA0;
			 padding : 7px;
			
			 
}
	 .col8{
	         border-style: solid;
	         margin: 3px;
			  min-height : 150px;
			 background-color:#5F9EA0;
			 padding : 7px;
}
	.col9{
	         border-style: solid;
	         margin: 3px;
			 min-height : 200px;
			 background-color:#5F9EA0;
			 padding : 7px;
	       }
	  .col10{
	         border-style: solid;
	         margin: 3px;
			 min-height : 300px;
			  background-color:#5F9EA0;
			 padding : 7px;
}
	 .col11{
	         border-style: solid;
	         margin: 3px;
			 min-height : 200px;
			 background-color:#5F9EA0;
			 padding : 7px;
}
	.col12{
	         border-style: solid;
	         margin: 3px;
			 min-height : 300px;
			 text-align : center;
			 background-color :#FAEBD7;
	       }
	   .col13{
	         border-style: solid;
	         margin: 3px;
			 min-height : 150px;
			  background-color:#5F9EA0;
			 padding : 7px;
}

  input[type=submit]{
                background-color: #008CBA;
               border: none;
               color: white;
               padding: 8px 16px;
               text-align: center;
               text-decoration: none;
               display: inline-block;
               font-size: 16px;
               
             }
    .square {
    background-color:#00008B;
    width: 5vw;
    height: 5vw;
 
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
      <a class="navbar-brand" href="">
      <b style="color:white;">CUNY<i style="color:yellow;">blackboard</i></b></a>
    </div>
    <ul class="nav navbar-nav">
      <li><a href="http://localhost:8080/WikiApplication/user/page/">Home</a></li>
      <li><a href="http://localhost:8080/WikiApplication/user/page/help">Help</a></li>
      <li><a href="http://localhost:8080/WikiApplication/user/page/brooklynCollege">Brooklyn College</a></li>
      <li><a href="">BC Library</a></li>
      <li><a href="http://localhost:8080/WikiApplication/user/page/resources">Blackboard Resources</a></li>
      <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspWelcome, ${user.name}</li>
      <li> <a href='<spring:url value="/l-out"/>'>Logout</a></li>
    </ul>
  </div>
</nav>
 <div class="container">
	   <div class="row"><br>
	       <div class="col-md-3">
		     <div class="col1">
		        <h4 style="text-align:center;">CUNYfirst MyInfo</h4>
		        <hr>
		        <p>CUNYfirst MyInfo is a new lookup tool to quickly find information for the new semester.Use it to find class schedules, class textbooks, program plan and hold information, and your biographical profile.</p><br>
		        <a href="https://myinfo.cuny.edu/cfalternate/login/login.jsp" style="color:hotpink;"><b>Try It Now</b></a><br>
		        <a href="https://cisweb.cuny.edu/cunyfirst-myinfo/FAQs-CUNYfirst-MyInfo.pdf" style="color:hotpink;"><b>Frequently Ask Questions</b></a><br><br>
		        <p style="text-align:center;"><b>MyInfo is now also available as an android and iOS app in the Google play and Apple App Stores</b></p>
		     </div>
		  </div>
		  <div class="col-md-4">
		     <div class="col2">
		        <h4 style="text-align:center;">Online Bookstore</h4>
		        <hr>
		        <p style="background-color:white;">No information to display<p>
		     </div><br>
		      <div class="col2">
		        <h4 style="text-align:center;">Browser Test</h4>
		        <hr>
		        <p style="color:#DCDCDC;">Use the button below to check if your web browser is properly configured to use Blackboard<p>
		        <input type="submit" name="browertestbutton" value="Test Your Browser">
		     </div>
		     <!-- <div class="col2">
		        <h4 style="text-align:center;">Course Registration</h4>
		        <hr>
		        <p style="color:#DCDCDC;">Use the button below to check if your web browser is properly configured to use Blackboard<p>
		        <input type="submit" name="browertestbutton" value="Test Your Browser">
		     </div>
		   -->
		  </div>
		  <div class="col-md-5">
		     <div class="col3">
		       <h4 style="text-align:center;">CUNY Virtual Desktop</h4>
		       <hr><br>
		       <p>If you are using ArcGIS, SPSS, SAS, Mathematica, Maplesoft or Matlab, you can now use the CUNY Virtual Desktop to access this software from home or on your laptop.</p>  
		       <h3 style="background-color:#00008B;  width: 4vw; color:white;">&nbspCU<span style="color: #00008B">&nbsp&nbspCLOUD<br><span style="color: white">&nbspNY<span style="color: yellow">&nbsp&nbspvirtual&nbsp&nbspdesktop</h3>
		       <br>
		     <p>Log into the CUNY Virtual Desktop at<a href="" style="color:hotpink"> www.cuny.edu/virtualdesktop</a></p>
		     </div>
		  </div>
		 </div>
		 <div class="row">
		  <div class="col-md-3">
		     <div class="col11">
		       <h4 style="text-align:center;">Tools</h4>
		        <hr><br>
		        <a href="https://bbhosted.cuny.edu/webapps/blackboard/execute/announcement?method=search&context=mybb&handle=my_announcements&returnUrl=/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_49_1&tabId=_1_1&forwardUrl=index.jsp" style="color:hotpink;">Announcements</a><br><br>
		        <a href="https://bbhosted.cuny.edu/webapps/calendar/viewPersonal" style="color:hotpink;">Calendar</a><br><br>
		        <a href="https://bbhosted.cuny.edu/webapps/blackboard/execute/taskEditList?returnUrl=/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_49_1&tabId=_1_1&forwardUrl=index.jsp" style="color:hotpink;">Tasks</a><br><br>
		        <a href="" style="color:hotpink;">My Grades</a><br><br>
		        <a href="" style="color:hotpink;">Personal Information</a><br><br>
		        <a href="" style="color:hotpink;">Update Email</a><br><br>
		        <a href="" style="color:hotpink;">Goals</a>
		        
		     </div>
		  </div>
	     <div class="col-md-5 col-md-offset-4">
		     <div class="col5">
		       <h4 style="text-align:center;">My Courses</h4>
		        <hr>
 
  <table>
     <c:forEach items="${posts}" var="post">
     <tr>
         <td><a href="http://localhost:8080/WikiApplication/user/page/courseRegistration">${post.post_title}</a></td>  
     </tr>
    </c:forEach>
    </table>
		           
		     </div>
		  </div>
		  
		 </div>
		  <div class="row">
		  <div class="col-md-3">
		     <div class="col6">
		       <h4 style="text-align:center;">Course Search</h4>
		        <hr>
		        <input type="text" placeholder="Search.."><br>
		        <input type="submit" name="searchbutton" value="Go">
		     </div>
		  </div>
		  <div class="col-md-5 col-md-offset-4">
		     <div class="col7">
		        <h4 style="text-align:center;">My Organizations</h4>
		        <hr>
		        <p style="text-align:center; color:	#DCDCDC;"><i>You are not currently participating in any organizations</i></p>
		     </div>
		  </div>
		 </div>
		  <div class="row">
		  <div class="col-md-3">
		     <div class="col8">
		       <h4 style="text-align:center;">Organization Search</h4>
		        <hr>
		        <input type="text" placeholder="Search.."><br>
		        <input type="submit" name="searchbutton" value="Go">
		     </div>
		  </div>
		  <div class="col-md-5 col-md-offset-4">
		     <div class="col9">
		       <h4 style="text-align:center;">My Announcements</h4>
		        <hr>
		        <p style="text-align:center;  color:#DCDCDC;"><i>No Institution Announcements have been posted in the last 7 days.
No Course or Organization Announcements have been posted in the last 7 days.</i><p><br>
               <h5 style="text-align:right;"><a href="" style="color:hotpink">more announcements...</a></h5>
		        
		     </div>
		  </div>
		 </div>
		  <div class="row">
		  <div class="col-md-3">
		     <div class="col10">
		       <h4 style="text-align:center;">Section Merge Tool</h4>
		        <hr>
		        <p>The course merge tool allow you to "merge" two or more courses that you are teaching into a single course that contains enrollments for all of the users that are enrolled in any of the "merged" courses<p><br>
		       <h5 style="text-align:center;"><a style="color:hotpink;">Click Here to Create and Manage Merged Courses</a></h5>
		     </div>
		  </div>
		   <div class="col-md-5 col-md-offset-4">
		     <div class="col13">
		       <h4 style="text-align:center;">CUNYfirst Global Search to find courses across the University</h4>
		        <hr>
		        <a href="" style="color: hotpink">CUNYfirst Global Search Tool</a>
		     </div>
		     <div class="col13">
		       <h4 style="text-align:center;">Course Registration</h4> 		   
		        <hr>
		        <a href="http://localhost:8080/WikiApplication/user/page/courseRegistration" style="color: hotpink">Click here to register courses</a>
		     </div>
		  </div>
		 </div>
		 </div>

</body>

</html>
