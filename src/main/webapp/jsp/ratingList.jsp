<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<html>
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

    <title>Rating List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/header.css">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>

<div id='center' class="main center">
    <div class="mainInner">
        <table class="table table-striped">
            <thead  id="tableHeader">
            <tr>
                <th scope="col">#</th>
                <th scope="col"> <spring:message code="faculty.title"/></th>
                <th scope="col"> <spring:message code="statement.details"/></th>
                <th scope="col"> <spring:message code="statement.userTotal"/></th>
                <th scope="col"> Status </th>
            </tr>
            </thead>

            <tbody>
            <c:forEach var="ratingList" items="${ratingList}">
                <tr>

                    <td>${ratingList.id}</td>
                    <td>${ratingList.statement.faculty.title}</td>
                    <td>
                            ${ratingList.statement.user.email} -
                            ${ratingList.statement.user.firstName} ${ratingList.statement.user.lastName}
                    </td>
                    <td class="total">
                            ${ratingList.totalMark}
                        <input type="hidden" class="totalMark" name="x" value="${ratingList.totalMark}">
                    </td>
                    <td>${ratingList.accepted}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>

        <form action="${pageContext.request.contextPath}/faculty">
            <button class="buttonAdd"> <spring:message code="statement.back"/> </button>
        </form>




<%--        <table>--%>
<%--            <thead>--%>
<%--            <tr>--%>
<%--                <th>Id</th>--%>
<%--                <th>--%>
<%--                    <spring:message code="faculty.title"/></th>--%>
<%--                <th><spring:message code="statement.details"/></th>--%>
<%--                <th>--%>
<%--                    <spring:message code="statement.userTotal"/></th>--%>
<%--                <th>Accepted</th>--%>

<%--            </tr>--%>
<%--            </thead>--%>

<%--            <c:forEach var="ratingList" items="${ratingList}">--%>
<%--                <tbody>--%>
<%--                <tr>--%>

<%--                    <td>${ratingList.id}</td>--%>
<%--                    <td>${ratingList.statement.faculty.title}</td>--%>
<%--                    <td>--%>
<%--                            ${ratingList.statement.user.email} ---%>
<%--                            ${ratingList.statement.user.firstName} ${ratingList.statement.user.lastName}--%>
<%--                    </td>--%>
<%--                    <td class="total">--%>
<%--                            ${ratingList.totalMark}--%>
<%--                        <input type="hidden" class="totalMark" name="x" value="${ratingList.totalMark}">--%>
<%--                    </td>--%>
<%--                    <td>${ratingList.accepted}</td>--%>
<%--                </tr>--%>
<%--                </tbody>--%>
<%--            </c:forEach>--%>
<%--        </table>--%>

<%--        <a href="${pageContext.request.contextPath}/faculty"><spring:message code="statement.back"/> </a>--%>

    </div>

</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>

</html>