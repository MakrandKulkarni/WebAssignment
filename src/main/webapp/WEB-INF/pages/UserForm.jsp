<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add/Edit Contact</title>

<script type="text/javascript">
 function gotohomepage(){
	 
	 window.location="/ManageUserApps";
	 
 }
 
 function resetform(){
	 
	 document.getElementbyId("userform").reset();
	 
 }


</script>

</head>
<body>
    <div style="border:1px solid black;font-size:15px;background-color:grey;height:100%;width:390px "> 
        <h7>Add/Update User</h7>
        <div style="border:1px solid black; height:100%;background-color:white;width:380px">  
        <form:form action="saveUser" method="post" modelAttribute="user" id="userform">
        <table>
            <form:hidden path="id"/>
            <tr>
                <td>FirstName:</td>
                <td><form:input path="firstname" /></td>
            </tr>
             <tr>
                <td>LastName:</td>
                <td><form:input path="lastname" /></td>
            </tr>
             <tr>
                <td>Sex:</td>
                <td>Male<form:radiobutton path="gender" value="Male"/>
                Female<form:radiobutton path="gender" value="FeMale"/></td>
            </tr>
            <tr>
                <td>Email:</td>
                <td><form:input path="email" /></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><form:input path="address" /></td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td><form:input path="telephone" /></td>
            </tr>
            <tr>
                <td><input type="submit" value="Save"></td>
                <td><input type="reset" value="Reset" onclick="resetform();"></td>
                <td><input type="button" value="Cancel" onclick="gotohomepage();"></td>
            </tr>
            
        </table>
        </form:form>
        </div>
    </div>
</body>
</html>