<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<title>SignUp</title>
</head>
<body>
  <section class="myform">
    <div class="container"> 
      <div class="row">
        <div class="col-md-12 myformdiv">
        	<h3>SignUp Form</h3>
                <form:form action="/user/user/addUser"  method="post" role="form" modelAttribute="user">  
  <form:hidden path="id" id="id" name="id" />
  <div class="form-row">
   <div class="form-group col-md-6">
     <label for="inputCity">FirstName</label>
     <form:input class="form-control" path="firstname" id="inputEmail4" type="text" name="firstname" placeholder="Enter FirstName"/>
   </div>
   
   <div class="form-group col-md-6">
     <label for="inputZip">LastName</label>
     <form:input class="form-control" path="lastname" id="inputEmail4" type="text" name="lastname" placeholder="Enter lastname"/>
   </div>
 </div>
 <div class="form-row">
  <div class="form-group col-md-6">
    <label for="inputEmail4">Email</label>
    <form:input class="form-control" path="email" id="inputEmail4" type="email" name="email" placeholder="Enter email"/>
  </div>
  <div class="form-group col-md-6">
    <label for="inputPassword4">Password</label>
    <form:input class="form-control" path="password" id="inputEmail4" type="password" name="password" placeholder="Enter password"/>
  </div>
</div>
<div class="form-row">
  <div class="form-group col-md-6">
    <label for="inputEmail4">Phone</label>
    <form:input class="form-control" path="phone" id="inputPassword4" type="number" name="phone" placeholder="Enter phone"/>
  </div>
  
</div> 
<button type="submit" class="btn btn-primary" name="submit" value="submit">SignUp</button>
</form:form>
	</br></br>
	<a href="/user/user/signInPage">Already have Account</a>
        </div>
      </div>
    </div>
    
    
  </section>

</body>
<style type="text/css">
  section.myform {
    height: 80vh;
    display: flex;
    justify-content: center;
    align-items: center;
}  
.col-md-12.myformdiv {
    padding: 65px;
    border: 1px solid grey;
} 
</style>
</html>