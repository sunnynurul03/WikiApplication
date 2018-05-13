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
	             height : 1350px;
	             
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
			 width:380px;
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
			 min-height : 120px;
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
		       <h4 style="text-align:center;">Caliper.tools_label</h4>
		        <hr><br>
		        <a href="https://bbhosted.cuny.edu/webapps/blackboard/execute/announcement?method=search&context=mybb&handle=my_announcements&returnUrl=/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_49_1&tabId=_1_1&forwardUrl=index.jsp" style="color:hotpink;">Announcements</a><br><br>
		        <a href="https://bbhosted.cuny.edu/webapps/calendar/viewPersonal" style="color:hotpink;">Calendar</a><br><br>
		        <a href="https://bbhosted.cuny.edu/webapps/blackboard/execute/taskEditList?returnUrl=/webapps/portal/execute/tabs/tabAction?tab_tab_group_id=_49_1&tabId=_1_1&forwardUrl=index.jsp" style="color:hotpink;">Tasks</a><br><br>
		        <a href="" style="color:hotpink;">My Grades</a><br><br>
		        <a href="" style="color:hotpink;">Personal Information</a><br><br>
		        <a href="" style="color:hotpink;">Update Email</a><br><br>
		        <a href="" style="color:hotpink;">Goals</a>
		        
		     </div><br>
		     <div class="col10">
		       <h4 style="text-align:center;">Caliper.links_label</h4>
		        <hr>
		        <a href="" style="color:hotpink;">Brooklyn College WebCentral</a>
		     </div>
		 </div>
		 <div class="col-md-4">
		     <div class="col6">
		       <h4 style="text-align:center;">Ask-A-Librarian</h4>
		        <hr>
		        <p>Ask-a-Librarian is designed to provide fast answers to your questions using information found on the Internet and in databases funded by the Brooklyn College Library and the City University of New York. In most cases, our librarians will provide an answer online in 15 minutes or less! If your question involves lengthy research, we'll get you started and provide a referral for you or your question.
Select this link to get access <b style="color:hotpink;">Ask-A-Librarian</b></p>
		     </div><br>
		     <div class="col6">
		       <h4 style="text-align:center;">Blackboard v.9.1 Help</h4>
		        <hr>
		        <h5><b>Here are some resources to help you use Blackboard at Brooklyn College more effectively.</b></h5><br>
		        <p><b style="color:hotpink;">Blackboard FAQs for Students</b> : simple answers to common questions for students.</p><br>
		        <p><b style="color:hotpink;">Blackboard Student Manual</b>: provides information on courses through the Blackboard Academic Suite. The manual includes information on posting course assignments / safeassignment, communicating with other students, and adding threat to the Discussion Board.</p><br>
		        <h5><b>Where can I ask for help on Blackboard?</b></h5>
		        <p><ul>On-campus, please visit the Library Cafe (lower level, Whitehead Hall; or Library New Media Center (2nd floor, Library; click the following links for hours:</ul>
		           <ul><a><b style="color:hotpink;">Library Cafe</b></a></ul>
		           <ul><a><b style="color:hotpink;">Media Center</b></a></ul>
		           <ul>Off-campus, you may contact: Information Technology Services (ITS) </ul>
		           <ul><b>Help Desk</b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbspPhone: (718) 677-6180</ul>
		           <ul><b>E-mail</b>: helpdesk@brooklyn.cuny.edu</ul>
		           <ul><b>Hours</b>: Monday - Friday, from 9:00 AM to 5:00 PM </ul>
		        </p>
		     </div>
		  </div>
		 <div class="col-md-5">
		     <div class="col5">
		       <h4 style="text-align:center;">My Courses</h4>
		        <hr>
		     </div><br>
		      <div class="col7">
		        <h4 style="text-align:center;">My Organizations</h4>
		        <hr>
		        <p style="text-align:center; color:	#DCDCDC;"><i>You are not currently participating in any organizations</i></p>
		     </div><br>
		      <div class="col9">
		       <h4 style="text-align:center;">My Announcements</h4>
		        <hr>
		        <p style="text-align:center;  color:	#DCDCDC;"><i>No Institution Announcements have been posted in the last 7 days.
No Course or Organization Announcements have been posted in the last 7 days.</i><p><br>
               <h5 style="text-align:right;"><a href="" style="color:hotpink">more announcements...</a></h5>
		        
		     </div><br>
		      <div class="col5">
		       <h4 style="text-align:center;">Organization Catalog</h4>
		        <hr><br>
		        <a href=""><b style="color:hotpink;">BMCC</b></a><br>
		        <a href=""><b style="color:hotpink;">Baruch</b></a><br>
		        <a href=""><b style="color:hotpink;">Bronx</b></a><br>
		        <a href=""><b style="color:hotpink;">Brooklyn</b></a><br>
		        <a href=""><b style="color:hotpink;">CUNY Law</b></a><br>
		        <a href=""><b style="color:hotpink;">CUNY Medical School</b></a><br>
		        <a href=""><b style="color:hotpink;">CUNY-WIDE</b></a><br>
		        <a href=""><b style="color:hotpink;">Central Office</b></a><br>
		        <a href=""><b style="color:hotpink;">City College</b></a><br>
		        <a href=""><b style="color:hotpink;">City Tech</b></a><br>
		        <a href=""><b style="color:hotpink;">Graduate center</b></a><br>
		        <a href=""><b style="color:hotpink;">Graduate School of Public Health and Health Policy</b></a><br>
		        <a href=""><b style="color:hotpink;">Guttman Community college</b></a><br>
		        <a href=""><b style="color:hotpink;">Hostos</b></a><br>
		        <a href=""><b style="color:hotpink;">Hunter</b></a><br>
		        <a href=""><b style="color:hotpink;">John Jay</b></a><br>
		        <a href=""><b style="color:hotpink;">Kinsborough</b></a><br>
		        <a href=""><b style="color:hotpink;">LaGuardia</b></a><br>
		        <a href=""><b style="color:hotpink;">Lehman</b></a><br>
		        <a href=""><b style="color:hotpink;">Macaulay Honors College</b></a><br>
		        <a href=""><b style="color:hotpink;">Medgar Ever</b></a><br>
		        <a href=""><b style="color:hotpink;">Online BA</b></a><br>
		        <a href=""><b style="color:hotpink;">Queens College</b></a><br>
		        <a href=""><b style="color:hotpink;">Queensboro</b></a><br>
		        <a href=""><b style="color:hotpink;">School of Journalism</b></a><br>
		        <a href=""><b style="color:hotpink;">School of Professional Studies</b></a><br>
		        <a href=""><b style="color:hotpink;">Statan Island</b></a><br>
		        <a href=""><b style="color:hotpink;">York</b></a>
		     </div>
		  </div>
	   </div>
   </div>	  
		 
	  
	

</body> 

</html>
