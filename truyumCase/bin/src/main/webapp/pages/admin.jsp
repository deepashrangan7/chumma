<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>


<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<style>
#box{
display: flex;
justify-content: flex-end;
}

</style>
<meta charset="ISO-8859-1">
<title>Choose User Type</title>
</head>
<body>
<!-- header style="background-color: black;color: white">
<div>

<span style="font-size: 50px">TruYum</span>
<span class="float-right">
 <a class="btn btn-light" href="/" >Logout</a>
</span>

</div>
</header-->
<nav class="navbar navbar-dark bg-dark justify-content-between" >
  <a class="navbar-brand text-light" href="#">TruYum</a>
  <a class="btn btn-light" href="/" >Logout</a>
</nav>


<p style="font-size: 50px">
Menu Items
</p>
<br/>
<br/>
<br/>

<table class="table table-hover table-dark">
  <thead>
    <tr>
      <th scope="col">Name</th>
      <th scope="col">Price</th>
      <th scope="col">Active</th>
      <th scope="col">Date of Launch</th>
       <th scope="col">Category</th>
       <th scope="col">Free delivery</th>
        <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Sandwich</td>
			<td>rs.99</td>
			<td>Yes</td>
			<td>20/12/1998</td>
			<td>Main Course</td>
			<td>Yes</td>
			<td><a class="btn btn-outline-info" href="/ed">Edit</a></td>
    </tr>
    <tr>
    	<td>Burger</td>
			<td>rs.89</td>
			<td>Yes</td>
			<td>20/12/1998</td>
			<td>Main Course</td>
			<td>No</td>
			<td><a class="btn btn-outline-info" href="/ed">Edit</a></td>
			
    </tr>
   
  </tbody>
</table>
<center>
<a href="#" class="btn btn-secondary btn-lg btn-block">Add New Product</a>
</center>

</body>
</html>