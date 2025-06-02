<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
    <title>Пользователи</title>
    <link rel="icon"
          href="<c:url value="/images/logo.svg"/>">

    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap"
          rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT"
          crossorigin="anonymous">
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">

    <link type="text/css"
          rel="stylesheet"
          href="<c:url value="/css/styles.css"/>">
    <link type="text/css"
          rel="stylesheet"
          href="<c:url value="/css/table.css"/>">
</head>
<body>
<header class="_container">
    <a href="#">
        <img src="<c:url value="/images/logo.svg"/>"
             alt="Tortikov">
    </a>
    <nav>
        <ul>
            <li class="mr-3">
                <a class="link"
                   href="#">
                    Заказы
                </a>
            </li>
            <li class="mr-3">
                <a class="link"
                   href="#">
                    Торты
                </a>
            </li>
            <li>
                <a class="link"
                   href="#">
                    Пользователи
                </a>
            </li>
        </ul>
    </nav>

    <div class="icon-container">
        <i class="bi bi-box-arrow-right"></i>
    </div>
</header>

<div class="table-container">
    <div class="table-content"
         style="width: 900px;">
        <table class="table">
            <thead>
            <tr>
                <th scope="col">ФИО</th>
                <th scope="col">Номер телефона</th>
                <th scope="col">Роль</th>
                <th scope="col">Действие</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${users}">
                    <tr>
                        <td>${user.fullName}</td>
                        <td>${user.phone}</td>
                        <td>${user.role.name}</td>
                        <td>
                            <i class="bi bi-pencil-square action-icon mr-1"></i>
                            <i class="bi bi-trash3 action-icon"></i>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js"
        integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D"
        crossorigin="anonymous">
</script>
<script src="/js/script.js"></script>
</body>
</html>
