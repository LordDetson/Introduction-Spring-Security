<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello</title>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <link href="<c:url value="/resources/bootstrap/css/bootstrap.min.css"/>" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="<c:url value="/resources/css/loginPage.css"/>">
</head>
<body>
<div id="logreg-forms">
    <form:form name="form_login" method="post" action="login_check" cssClass="form-signin">
        <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
        <c:if test="${not empty error}">
            <c:out value="${error}"/>
        </c:if>
        <input type="text" name="user_login" class="form-control" placeholder="Email address or name" required="" autofocus="">
        <input type="password" name="password_login" class="form-control" placeholder="Password" required="">
        <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
        <a href="#" id="forgot_pswd">Forgot password?</a>
        <hr>
        <button class="btn btn-primary btn-block" type="submit" id="btn-signup">
            <i class="fas fa-user-plus"></i> Sign up New Account
        </button>
    </form:form>
</div>
<script src="<c:url value="/resources/jquery/jquery-3.4.1.slim.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/popper/popper.min.js"/>" type="text/javascript"></script>
<script src="<c:url value="/resources/bootstrap/js/bootstrap.min.js"/>" type="text/javascript"></script>
</body>
</html>
