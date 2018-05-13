<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html>
<head>
<title>Registration</title>
<style type="text/css">

body {
	background-color: gray;
	color: white;
}

h1 {
	color: green;
}

 div {
            background-color : black; 
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 50%;
            margin-top : 15.5%;
            margin-buttom : 100%;
          }
                             
</style>
<script type="text/javascript">

 /* function validateForm() {
	
    //validate();
    var x = document.getElementById("name");
    var y = document.getElementById("email");
    var z = document.getElementById("age");
    var a = document.getElementById("phoneNumber");
    var b = document.getElementById("username");
    var c = document.getElementById("password");
    var d = document.getElementById("passwordValid");
    
    if (x.value == "" || y.value == "" || z.value == "" || a.value == "" || b.value == "" || c.value == "" || d.value == "") {
        alert("all fields must be filled out");
        return false;
    /* if(z.value <0 || z.value > 150)
        {
    	 return true;
        }
     else if{
    	 return false;
     } */
      
    
  /* function validate() {
        var radio = document.getElementById("male");
        var radio1 = document.getElementById("female");
        var radio2 = document.getElementById("other");
   if(radio.value=="" && radio1.value=="" && radio2.value=="")
	 {
	   alert("please select male or female or others");
	   return false;
	 } 
}  */
   
 /*  function validateForm(){
	
	 var name = getElementById("name").value;
	 
	 if(name == ""){
	  document.getElementById("name_error").innerHTML="**Please fill out the name field";
	  return false;
	 }
	 
}
  */
</script>
</head>
<body>
   <div>
	<h1><i>Blackboard Registration</i></h1>
	<br>
	<br>
	<br>
	<form:form action="${pageContext.request.contextPath}/info" name="myForm" method="post" 
	    modelAttribute="user" onsubmit="return validateName() &&  validateEmail() && validateAge() && validatePhoneNumber() && validateUsername() && validatePassword() && validateRadiobuttons() && passwordMatching()">
	     <form:input path="authority_id" type="hidden" value="${authority_id}"></form:input><form:input path="authority_id" type="hidden" value="${authority_id}"></form:input>
	      <input type="hidden" name="actionType" value="${actionType}"/> 
	     <form:input path="id" type="hidden" value="${id}"></form:input>
	     <form:input path="enabled" type="hidden" value="${enabled}"></form:input>
	     <form:input path="user_id" type="hidden" value="${user_id}"></form:input>
	     <form:input path="authority_id" type="hidden" value="${authority_id}"></form:input>
		<table>
		
			<tr>
				  <td><b>Name :</b></td>  
				<td><form:input type="text" id="input-name" name="name" onfocusout="return validateName()" path="name" value="${user.name}"/></td>
				<span id="name_error"></span>
			</tr>
			<tr>
			    <td><b>Email :</b></td>  
				<td><form:input style="width:240px;"  width="60px" type="text"
						path="email" id="input-email"  name="email" onfocusout="return validateEmail()" value="${user.email}"/>
						<span id="email_error"></span>
					</td>
			</tr>
		  
			<tr>
			    <td><b>Age :</b></td> 
				<td><form:input style="width:60px;" type="text" path="age"
						value="${user.age}" name="age" id="input-age" onfocusout="return validateAge()"/></td>
						<span id="age_error"></span>
			</tr>
	      
			<tr>
			    <td><b>Phone Number :</b></td>  
				<td><form:input type="text" path="phoneNumber"
						value="${user.phoneNumber}" name="phoneNumber" id="input-phoneNumber" onfocusout="return validatePhoneNumber()"></form:input></td>
						<span id="phoneNumber_error"></span>
			</tr>


		   <tr>
              <td><b>Sex :</b></td>
               <td> <input type="radio" name="gender" value="male" path="sex" id="male"> Male
               <input type="radio" name="gender" value="female" path="sex" id="female"> Female
               <input type="radio" name="gender" value="other" path="sex" id="other"> Other  
               <span id="radio_error"></span>
              </td>  
			<!--  	<td><form:radiobuttons path="sex" items="${sexTypes}"/></td> -->
		 </tr>
			
			
			<tr>
				<td><b>Country :</b></td>

				<td><form:select name="countryList" path="country">
						<c:forEach items="${countryList}" var="country">
							<form:option value="${country}">${country}</form:option>
						</c:forEach>
					</form:select></td> 
			</tr>
			
			<tr>
			    <td><b>Username :</b></td>
				<td><form:input type="text" path="username"
						value="${user.username}" name="username"  id="input-username" onfocusout="return validateUsername()" onsubmit="return validateUsername()"></form:input></td>
						<span id="username_error"></span>
			</tr>
			
			
			<tr>
			    <td><b>Password :</b></td>   
				<td><form:input type="password" path="password"
						value="${user.password}" name="password" id="input-password" ></form:input></td>
						<span id="password_error"></span>
					
			</tr>
			
			
			<tr>
			    <td><b>Confirm Password :</b></td>  
				<td><form:input type="password" path="passwordValid"
						value="${user.passwordValid}" id="input-passwordValid"></form:input></td>
						
			</tr>
			
			<tr>
				<td><input style="color:green;" type="submit"
						name="submit" id="submit" value="Register" ></input></td>
			</tr>
			
			

		</table>
		
		<script type="text/javascript">
		
			function validateName(){
				 var regex = /^[A-Za-z.\s_-]+$/;

				    var ctrl =  document.getElementById('input-name');

				    if (regex.test(ctrl.value)) {
				    	document.getElementById('name_error').innerHTML="";
				    	ctrl.style.backgroundColor="#ffffff";		    	
				        return true;
				    }
				    else {
				    	document.getElementById('name_error').innerHTML="Please correct your name!!!";
				    	ctrl.style.backgroundColor = "red";
				        return false;
				    }
				  
			}
			
		function validateEmail(){
		
			 var email_regex =  /^[^\s@]+@[^\s@]+\.[^\s@]+$/ ;
			 
			    var ctrl =  document.getElementById('input-email');

			    if (email_regex.test(ctrl.value)) {
			    	document.getElementById('email_error').innerHTML="";
			    	ctrl.style.backgroundColor="#ffffff";		    	
			        return true;
			    }
			    else {
			    	document.getElementById('email_error').innerHTML="Please correct your email!!!";
			    	ctrl.style.backgroundColor = "red";
			        return false;
			    }
			  
		}
			
		function validateAge(){
			var age_regex=/^(0?[1-9]|[1-9][0-9]|[1][1-9][1-9]|200)$/;

			    var ctrl =  document.getElementById('input-age');

			    if (age_regex.test(ctrl.value)) {
			    	document.getElementById('age_error').innerHTML="";
			    	ctrl.style.backgroundColor="#ffffff";		    	
			        return true;
			    }
			    else {
			    	document.getElementById('age_error').innerHTML="Plesae correct your age!!!";
			    	ctrl.style.backgroundColor = "red";
			        return false;
			    }
			  
		}
		
		
		
		
		function validatePhoneNumber(){
			var phoneNumber_regex=/^[0-9]{3,18}$/;

			    var ctrl =  document.getElementById('input-phoneNumber');

			    if (phoneNumber_regex.test(ctrl.value)) {
			    	document.getElementById('phoneNumber_error').innerHTML="";
			    	ctrl.style.backgroundColor="#ffffff";		    	
			        return true;
			    }
			    else {
			    	document.getElementById('phoneNumber_error').innerHTML="Please correct you phone number!!!";
			    	ctrl.style.backgroundColor = "red";
			        return false;
			    }
		}
	   function validateUsername(){
		var username_regex=/^[a-zA-Z0-9]{2,20}$/;
		
	     var ctrl =  document.getElementById('input-username');

		  if (username_regex.test(ctrl.value)) {
		  document.getElementById('username_error').innerHTML="";
		  ctrl.style.backgroundColor="#ffffff";		    	
		  return true;
		 }
		 else {
			document.getElementById('username_error').innerHTML="Username must be 2 characters long and combination of number and letter Or only letters Or only numbers!!!";
			ctrl.style.backgroundColor = "red";
		    return false;
		 }
	
  }
	    function validatePassword(){
		   
			var password_regex=/^(?=.*[\d])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*])[\w!@#$%^&*]{8,}$/;
			
		     var ctrl =  document.getElementById('input-password');

			  if (password_regex.test(ctrl.value)) {
			  document.getElementById('password_error').innerHTML="";
			  ctrl.style.backgroundColor="#ffffff";		    	
			  return true;
			 }
			 else {
				document.getElementById('password_error').innerHTML="Password must be at least 8 characters long, at least 1 lowercase, 1 capital letter, 1 number and 1 special character!!!";
				ctrl.style.backgroundColor = "red";
			    return false;
			 }
				  
		   }
	   
	   function validatePasswordValid(){
			var passwordValid_regex=/^(?=.*[\d])(?=.*[A-Z])(?=.*[a-z])(?=.*[!@#$%^&*])[\w!@#$%^&*]{8,}$/;
			
		     var ctr =  document.getElementById('input-passwordValid');

			  if (passwordValid_regex.test(ctr.value)) {
			  document.getElementById('passwordValid_error').innerHTML="";
			  ctrl.style.backgroundColor="#ffffff";		    	
			  return true;
			 }
			 else {
				document.getElementById('passwordValid_error').innerHTML="Password must be at least 8 characters long, at least 1 lowercase, 1 capital letter, 1 number and 1 special character!!!";
				ctrl.style.backgroundColor = "red";
			    return false;
			 }
			
	   }
	   
// 	   password1Input.onkeyup=function(){
// 		   console.log(password1Input);
// 	   }
	   
// 	   password2Input.onkeyup=function(){
// 		   console.log(password2Input);
// 	   }
	   
// 	   password2Input.onfocusout=function(){
// 		   console.log(password1Input==password2Input);
// 	   }
	   
	   function passwordMatching(){
		   var password1Input  = document.getElementById("input-password");
		   var password2Input  = document.getElementById("input-passwordValid");
		   
			if(password1Input.value == password2Input.value ){
			 return true;
			} else{
				alert("Two passwords don't match");
				return false;
			}
		  }
	 
	 function validateRadiobuttons(){
	   var male=document.getElementById('male').checked;
	   var female=document.getElementById('female').checked;
	   var other=document.getElementById('other').checked;

	    if((male=="") && (female=="") && (other==""))
	   {
	      // document.getElementById('radio_error').innerHTML="Gender must be choosen";
	      document.getElementById('radio_error').innerHTML="Please select male Or female Or other";
	       return false;
	   }
	    else{
		    return true;
	    }
	 }	 
		</script>
	</form:form>
  </div>
</body>
</html>   
