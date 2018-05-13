
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<meta charset="utf-8">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
  <title>admin Page</title>
  <head>
  </head>
  <c:if test="${postSubmitted == 'true'}">
 <p>Newpost submitted.</p>
</c:if>
  
  <body>
    <form:form action="${pageContext.request.contextPath}/admin/page" method="post" modelAttribute="post">
      <h3>Welcome, ${user.name }</h3>
     <tr>
				  <td><b> Course Name :</b></td>  
				<td><form:input type="text" path="post_title" value="${post.post_title}"/></td>
	</tr>
	
	<tr>
				<td><input style="color:green;" type="submit"
						name="submit" id="submit" value="Submit Course" ></input></td>
			</tr>
    </form:form>
  </body>
</html>