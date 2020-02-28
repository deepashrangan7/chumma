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

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width,initial-scale=1.0"/>
<style>
#box{
display: flex;
justify-content: flex-end;
}

</style>
<meta charset="ISO-8859-1">
<title>Menu</title>
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

<center>
<p style="font-size: 50px">
Menu Items
</p>
</center>
<br/>
<br/>
<br/>

<div class="table-responsive">
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
  
  <%
  List<MenuBean> mlist=(List<MenuBean>)request.getAttribute("menu");
  for(MenuBean mb:mlist){
	  String result="no";
	  if(mb.getDelivery()==true)
		  result="yes";
	  int id=mb.getId();
	 //out.print(id);
		  
  %>
<tr>
<td><%=mb.getName() %></td>
<td><%=mb.getPrice() %></td>
<td><%=mb.getActive() %></td>
<td><%=mb.getDate() %></td>
<td><%=mb.getCategory() %></td>
<td><%=result%></td>
<td><a class="btn btn-outline-info" href="<%="/edit/"+id%>">Edit</a></td>
</tr>  
  <%} %>

   
  </tbody>
</table></div>
<center>
<a href="/add" class="btn btn-secondary btn-lg btn-block">Add New Product</a>
</center>

</body>
</html>