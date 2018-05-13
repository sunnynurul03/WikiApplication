<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
  <head>
     <title>Third Page</title>
  </head>
  <body>
      ${logInUser}
      <h2>Login Successful</h2>
   <!--  <h3>
          Id:${user.id}<br>
        Name:${user.name}<br>
       Email:${user.email}<br>
         Age:${user.age}<br>
Phone Number:${user.phoneNumber}<br>
         Sex:${user.sex}<br>
     Country:${user.country}<br>
    Username:${user.username }<br>
    Password:${user.password }
   
     
     <a href="${pageContext.request.contextPath}/user-form">&lt; Go Back</a> | <a href="${pageContext.request.contextPath}/all_users">Click here to view all users &gt;</a>  
   </h3>
  -->
  </body>
</html>