<%@page import="com.model.MenuBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>

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
<title>Add Product</title>
</head>
<body><nav class="navbar navbar-dark bg-dark justify-content-between" >
  <a class="navbar-brand text-light" href="#">TruYum</a>
  <a class="btn btn-light" href="/ad" >Back</a>
</nav>

<br/>
<br/>
<br/>
<!-- table class="table table-hover table-dark">

tbody>
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  
  </tbody>
</table-->
<form action="/added">
  <div class="form-group">
    <label for="name">Name</label>
    &nbsp;&nbsp;&nbsp; <input type="text"  class="form-control" name="name" id="exampleInputEmail1"/>
  </div>
  <div class="form-group">
    
  </div>
  
  <div class="row">
    <div class="col">
      <span >Price(Rs.)</span>
      &nbsp;&nbsp;&nbsp; <input  type="text" class="form-control"  name="price" id="exampleInputPassword1"/>
    </div>
    <div class="col">
      <br/>Active<br/>
&nbsp;&nbsp;&nbsp; 
<input class="form-check-input"  type="radio" name="active"  value="yes" checked/>Yes

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input class="form-check-input" type="radio" name="active"  value="no" />No     
</div>
<div class="col">
<br/>
  <span >Date Of Launch</span>
  <input type="text" class="form-control" id="date" name="Date" placeholder="DD/MM/YYYY"/>
</div>

<div class="col">
  <br/>
    <span >Category</span>
    <br/>
  <select  id="category" name="category">
<option value="maincourse" selected>Main Course</option>
<option value="starters">Starters</option>
<option value="dessert">Dessert</option>
<option value="drinks">Drinks</option>
  </select>  
  
  
  </div>
  </div>
  <div >
   &nbsp;&nbsp;&nbsp; <input type="checkbox" name="delivery" id="delivery" >
    <span  for="customCheck1">Free Delivery</span>
  </div>

  <br/>
  <br/> <br/>
  <button type="submit" class="btn btn-primary" >Add Product</button>
<form>





</body>
</html>