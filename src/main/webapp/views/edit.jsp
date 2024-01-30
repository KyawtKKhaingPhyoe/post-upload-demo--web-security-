<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
</head>
</head>
<body>

	<!-- Menu -->
	<c:import url="/views/includes/menu.jsp"></c:import>
	
	<main class="container pt-4">
		<h3>Edit Post</h3>
		
		<c:url value="/post/edit" var="savePost"></c:url>
		
		<form action="${savePost}" method="post">
		
			<div class="row">
				<div class="col-9">
					<label for="title" class="form-label">Title</label>
					<input name="title" type="text" placeholder="Enter title" class="form-control" />
				</div>
				<div class="mt-2">
					<label for="message" class="form-label">Post</label>
					<textarea name="body" id="" cols="30" rows="10" class="form-control"></textarea>
				</div>
				<div class="mt-2">
					<button type="reset" class="btn btn-secondary mr-2">Clear</button>
					<button type="submit" class="btn btn-primary">Save</button>
				</div>
			</div>
		</form>
		
	</main>

</body>
</html>