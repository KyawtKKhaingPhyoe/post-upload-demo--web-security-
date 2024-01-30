<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Details</title>

<body>

	<c:import url="/views/includes/menu.jsp"></c:import>

	<main class="container pt-4">
	
		<h3>Post Title</h3>
		
		<div class="d-flex justify-content-between text-secondary pt-4">
			<span>Owner Name</span>
			<span>Post Date</span>
		</div>
		
		<div class="pt-4">
		
			<c:url value="/post/delete" var="deleteUrl">
				<c:param name="id" value="${post.id}"></c:param>
			</c:url>
			<c:url value="/post/edit" var="editUrl">
				<c:param name="id" value="${post.id}"></c:param>
			</c:url>
			<a href="${deleteUrl}" class="btn btn-danger mr-2">Delete</a>
			<a href="${editUrl}" class="btn btn-primary">Edit</a>
		</div>
		
	</main>

</body>
</html>