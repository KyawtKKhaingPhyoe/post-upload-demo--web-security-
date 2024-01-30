<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In</title>
</head>
<body>
	<c:import url="/views/includes/menu.jsp"></c:import>
	
	<main class="container pt-4">
		<div class="row">
			<div class="col-4">
				<h3>Sign In</h3>
				
				<c:url value="/sign-in" var="signInUrl"></c:url>
				<c:url value="/sign-up" var="signUpUrl"></c:url>
				
				<c:url value="/sign-in" var="signInUrl"></c:url>
				<form action="${signInUrl}" method="post">
					<div class="mb-3">
						<label for="loginId">Login Id</label>
						<input name="login" type="text" placeholder="Enter login Id" class="form-control mt-1" />
					</div>
					<div class="mb-3">
						<label for="password">Password</label>
						<input name="password" type="password" placeholder="Enter password" class="form-control mt-1" />
					</div>
					<div>
						<button class="btn btn-primary mr-2">Sign In</button>
						
						
						<a href="${signUpUrl}" class="btn btn-secondary mr-2">Sign Up</a>
					</div>
					
				</form>
				
			</div>
		</div>
	</main>
	
</body>
</html>