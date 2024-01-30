<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
</head>
<body>
	<c:import url="/views/includes/menu.jsp"></c:import>

	<main class="container pt-4">
		<div class="row">
			<div class="col-4">
				<h3>Sign Up</h3>

				<c:url value="/sign-in" var="signinUrl"></c:url>
				<c:url value="/sign-up" var="signupUrl"></c:url>
				
				<form action="${signInUrl}" method="post">
					<div class="mb-3">
						<label for="name">Member Name</label> <input type="text"
							placeholder="Enter member name" class="form-control mt-1" />
					</div>
					<div class="mb-3">
						<label for="loginId">Login Id</label> <input type="text"
							placeholder="Enter login Id" class="form-control mt-1" />
					</div>
					<div class="mb-3">
						<label for="password">Password</label> <input type="password"
							placeholder="Enter password" class="form-control mt-1" />
					</div>
					<div>
						<button class="btn btn-primary mr-2">Sign Up</button>

						<a href="${signinUrl}" class="btn btn-secondary mr-2">Sign In</a>
					</div>

				</form>

			</div>
		</div>
	</main>

</body>
</html>