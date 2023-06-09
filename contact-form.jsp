<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Phone Contact Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: tomato">
			<div>
				<a href="#" class="navbar-brand"> Phone Contact App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Contacts</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${contact != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${contact == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${contact != null}">
            			Edit Contact
            		    </c:if>
						<c:if test="${contact == null}">
            			Add New Contact
            		    </c:if>
					</h2>
				</caption>

				<c:if test="${contact != null}">
					<input type="hidden" name="id" value="<c:out value='${contact.id}' />" />
				</c:if>
				
                
				<fieldset class="form-group">
					<label>Contact Name</label> 
					<input type="text"
						value="<c:out value='${contact.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Phone Number</label> 
					<input type="text"
						value="<c:out value='${contact.phno}' />" class="form-control"
						name="phno">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
			  </form>
			</div>
		</div>
	</div>
</body>
</html>
