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
	             height : 1000px;
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
		        
		     </div><br>
		     <div class="col11">
		       <h4 style="text-align:center;">Blackboard Internet Browser Compatibility</h4>
		        <hr>
                 <p>Please ensure you are using the correct Internet browser version associated with Blackboard 9.1</p><br>
                <h5 style="text-align:center;"> <a href="" style="color:hotpink;">Release 9.1 Q2</a></h5>
                <h5 style="text-align:center;"> <a href="" style="color:hotpink;">2017 Release</a></h5>
               <h5 style="text-align:center;"><a href="" style="color:hotpink;">Supported Browers</a></h5>
                <h5 style="text-align:center;"><a href="" style="color:hotpink;">& Operating</a></h5>
                <h5 style="text-align:center;"><a href="" style="color:hotpink;">Release 9.1 Q2</a></h5>       
		        
		     </div>
		     
		  </div>
		  <div class="col-md-4">
		     <div class="col2">
		        <h4 style="text-align:center;">Browser Test</h4>
		        <hr>
		        <p style="color:#DCDCDC;">Use the button below to check if your web browser is properly configured to use Blackboard<p>
		        <input type="submit" name="browertestbutton" value="Test Your Browser">
		     </div>
		  </div>
		   <div class="col-md-5">
		     <div class="col11">
		       <h4 style="text-align:center;">FAQ's</h4>
		        <hr>
		        <h5><b>Where are the rest of my courses?</b></h5><br>
		        <p>If you don't see one of your courses on Blackboard, your instructor may not yet have made it available. Contact your instructor to find out if they plan to make the course available at a later date. </p><br>
		        <p><i><b>Note:</b> The courses that are listed under <b>My Courses</b> may not fully reflect the courses for which you have registered. To view your official course registration, visit <a href="" style="color:hotpink;">eSIMS</a> inside the CUNY portal.</i></p><br>
		        <h5><b>Can other students see my email address?</b></h5><br>
		        <p>No.  As of August 25, 2009, by default, students' email addresses are not viewable by other students. <i> If you wish your email address to display to others on Course Rosters,</i> you can change this by clicking <b style="color:red;">Personal Information</b> in the Tools box on the left side of the HOME tab,  then <b style="color:red;">Set Privacy Options</b> and selecting to display your email address.</p>
		        <h5><b>My email address is wrong.  How can I change it?</b></h5><br>
		        <p>Only one email address can come into Blackboard.  Therefore, the email address that is active in the CUNY portal is brought into the Blackboard system.  If this address is not the one you use, you can now change it in Blackboard.  Click the <b style="color:red;">Update Email</b> link in the Tools box on the left side of the HOME tab.  This will display the email currently in use by Blackboard and allow you to change it to a CUNY email address.  <b>This will not change the email address used in the CUNY Portal or any other CUNY system.  It will only change the email used by Blackboard.</b></p>
		     </div>
		  </div>
		 </div>	  
		 
	  
	

</body> 

</html>
