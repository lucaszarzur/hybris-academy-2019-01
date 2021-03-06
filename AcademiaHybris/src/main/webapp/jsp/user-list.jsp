<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="custom" tagdir="/WEB-INF/tags" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<html>
<c:url value="/" var="homePage"/>
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <script src="<c:url value="/resources/js/common.js" />"></script>
    <script src="<c:url value="/resources/js/list-order-script.js" />"></script>

    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/common.css" />'>
    <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/list-order.css" />'>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Usuario</title>

</head>
<body>
<custom:scripts/>

<div class="page-container">
    <div class="page-title"> Usuario</div>

    <div class="order-header">
        <div class="sub-title">List</div>

        <table>
            <tr class="table-header">
                <th>ID</th>
                <th>Nome</th>
                <th>Sobrenome</th>
            </tr>

            <c:url var="userPage" value="/user"/>
            <c:forEach var="user" items="${users}">
                <tr>
                    <td width="10%"><a href="${userPage}?id=${user.id}">${user.id}</a></td>
                    <td width="40%"><a href="${userPage}?id=${user.id}">${user.firstname}</a></td>
                    <td width="50%"><a href="${userPage}?id=${user.id}">${user.lastname}</a></td>
                </tr>
            </c:forEach>
        </table>
    </div>

    <div class="order-footer">
        <div>
            <a href="${userPage}" id="register" name="register">Novo Usuario</button>
        </div>
    </div>

</div>

<div class="page-footer">
    <a href="${homePage}">Home</a>
</div>
</body>
</html>