<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Văn Weather</title>
<style>
.center {
	text-align: center;
	margin-bottom: 1vw;
	margin-top: 1vw;
}

.inputForm {
	border: 0.2vw black solid;
	border-radius: 1vw;
	display: inline-block;
}

.enter {
	width: 23.5vw;
	font-size: 1.4vw;
	padding: 0.1vw 0.1vw;
	display: inline;
	margin: auto;
	margin-bottom: 0.5vw;
	outline: none;
	margin: 0.5vw auto;
	border: none;
	background: white;
	margin: 1vw;
}

.submit {
	width: fit-content;
	font-size: 1.4vw;
	padding: 0.1vw 0.1vw;
	display: inline;
	margin: auto;
	margin-bottom: 0.5vw;
	outline: none;
	margin: 0.5vw auto;
	border: none;
	background: white;
	margin: 1vw;
}

.searchIcon {
	width: 1.5vw;
}
</style>
</head>
<body>
	<div class="center">
		<form class="inputForm" action="TakeInfo">
			<input class="enter" type="text" name="city"
				placeholder="Enter A Place To Search For Weather">
			<button type="submit" class="submit">
				<img class="searchIcon" src="images/search.png">
			</button>
		</form>
	</div>
</body>
</html>