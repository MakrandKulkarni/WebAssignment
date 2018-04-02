<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Management Screen</title>
<script type="text/javascript">

function getConfirmation(){
	alert("Hello");
   var retVal = confirm("Do you want to delete the record ?");
   alert(retVal);
   if( retVal == true ){
       return true;
   }
   if(retVal==false){
	  
       return false;
   }
}

</script>
</head>
<body>
	<div align="center">
		<h4>
			Add User <a href="newUser">here</a>
		</h4>
		<h1>User List</h1>
		
		<table border="1">
			<th>S.No</th>
			<th>FirstName</th>
			<th>LastName</th>
			<th>Sex</th>
			<th>Email</th>
			<th>Address</th>
			<th>Telephone</th>
			<th>Action</th>

			<c:forEach var="user" items="${listUser}">
				<tr>
					<td>${user.id}</td>
					<td>${user.firstname}</td>
					<td>${user.lastname}</td>
					<td>${user.gender}</td>
					<td>${user.email}</td>
					<td>${user.address}</td>
					<td>${user.telephone}</td>
					<td><a class="mylink" href="editUser?id=${user.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp; <a
						href="deleteUser?id=${user.id}" onclick="getConfirmation();">Delete</a></td>

				</tr>
			</c:forEach>
		</table>
		
	</div>
</body>
</html>