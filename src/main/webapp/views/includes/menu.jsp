<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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

<nav class="bg-dark">

		<div
			class="container d-flex justify-content-between align-items-center text-white pt-2 pb-2">

			<!-- Title -->
			<h3>Post Demo</h3>
			
			<c:url value="/home" var="searchUrl" ></c:url>

			<form action="${searchUrl}" class="row w-50">
			
				<div class="col-8">
					<!-- Search -->
					<input name="keyword" type="text" placeholder="Search Keyword"
						class="form-control" />
				</div>

				<!-- Search Button -->
				<button type="submit" class="btn text-white col">Search</button>

				<!-- Add New -->
				<c:url value="/post/edit" var="addNew" ></c:url>
				<a href="${addNew}" class="btn text-white col">Add New</a>

			</form>
			
		</div>

	</nav>