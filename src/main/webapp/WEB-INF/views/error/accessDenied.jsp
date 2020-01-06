<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
</head>
<body class="bg-dark text-white py-5">
<div class="container py-5">
    <div class="row">
        <div class="col-md-2 text-center">
            <p><i class="fa fa-exclamation-triangle fa-5x"></i><br/>Status Code: 403</p>
        </div>
        <div class="col-md-10">
            <h3>OPPSSS!!!! Sorry...</h3>
            <p><c:out value="${errorMsg}"/></p>
            <a class="btn btn-danger" href="<c:url value="/user"/>">Go Back</a>
        </div>
    </div>
</div>
<script src="<c:url value="/resources/jquery/jquery-3.4.1.slim.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/popper/popper.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script>
</body>
</html>
