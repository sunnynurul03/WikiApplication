<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
  pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

<html>
  <head>
    <title>Login</title>
    <style type="text/css">
     body {
            background-image : url(http://bcexcelsior.com/wp-content/uploads/2014/03/1602007_10152187365618270_2062592157_o.jpg);
            background-size : cover;
            height : 100vh;
            background-position : center;
          }
     div {
            background-color : white; 
            display: block;
            margin-left: auto;
            margin-right: auto;
            width: 40%;
            margin-top : 15.5%;
            margin-buttom : 100%;
          }
      button {
               background-color: #4CAF50; /* Green */
               border: none;
               color: white;
               padding: 8px 16px;
               text-align: center;
               text-decoration: none;
               display: inline-block;
               font-size: 16px;
              }
     table {
             padding : 10px;
           }
    
     h3 {
          padding : 10px;
        }
     
     input[type=text] {
                         width: 300px;
                         padding: 12px 20px;
                         margin: 8px 0;
                         box-sizing: border-box;
                         border: none;
                         background-color: #3CBC8D;
                         color: white;
                       }
     input[type=password] {
                             width: 300px;
                             padding: 12px 20px;
                             margin: 8px 0;
                             box-sizing: border-box;
                             border: none;
                             background-color: #3CBC8D;
                             color: white;
    
                            }
                          a{
                          color: green;
                          }
                         i{
                         padding:12px 20px;
                         }
                         h4{
                         color:red;
                         }
     </style>
   <!--    <link href="/resources/css/login.css" rel="Stylesheet" type="text/css"/>  -->
    
  </head>
  <body>
  
 
  
  <div>
     <!-- <c:if test = "${logout == 'true'}">			
         <p style="color:red;">successfully logged out</p>
       </c:if>
    -->
   <h1><i>Blackboard Login</i></h1><br>
   
   <form action="${pageContext.request.contextPath}/success" method="post" onSubmit="return loginSuccess()">
     <table>
       <tr>
        <!--  <td><b>Username :</b></td>  -->
         <td><input type="text" name="userid" placeholder="Username" id="userid" required/></td>
        </tr>
        <tr>
       <!--   <td><b>Password :</b></td>  -->
         <td><input type="password" name="passwd" placeholder="Password" id="passwordid" required/></td>
        </tr>
       <tr>
         <td><button type="submit">Login</button></td>
       </tr>
     </table>
   </form><br>
    
   
   <h3>Not registered?<a href="${pageContext.request.contextPath}/registration">Create an account</a></h3>
   </div>
  </body>
</html>