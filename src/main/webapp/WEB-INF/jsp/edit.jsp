<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1">
    <title>Редактирование</title>
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
          href="<c:url value="/css/edit.css"/>">
</head>
<body>
<header class="_container">
    <a href="<c:url value="/tortikov/main"/>">
        <img src="<c:url value="/images/logo.svg"/>"
             alt="Tortikov">
    </a>
    <nav>
        <ul>
            <li class="mr-3">
                <a class="link"
                   href="<c:url value="/tortikov/orders"/>">
                    Заказы
                </a>
            </li>
            <li>
                <a class="link"
                   href="<c:url value="/tortikov/users"/>">
                    Пользователи
                </a>
            </li>
        </ul>
    </nav>

    <div class="icon-container"
         onclick="location.href='<c:url value="/tortikov/auth/sign-out"/>'">
        <i class="bi bi-box-arrow-right"></i>
    </div>
</header>

<div class="form-title">Редактирование</div>

<div class="form-container">
    <form class="row g-3"
          action=""
          method="post">
        <div class="col-md-6">
            <label for="fio"
                   class="form-label">
                ФИО заказчика
            </label>
            <input id="fio"
                   name="fio"
                   class="form-control form-control-lg"
                   type="text"
                   value="${order.fio}">
        </div>
        <div class="col-md-6">
            <label for="cakes"
                   class="form-label">
                Наименование торта/ов
            </label>
            <select id="cakes"
                    class="form-select form-select-lg"
                    multiple>
                <c:forEach var="cake" items="${cakes}">
                    <option value="${cake.id}">${cake.name}</option>
                </c:forEach>
            </select>
        </div>
        <div class="col-md-6">
            <label for="addresses"
                   class="form-label">
                Адрес доставки
            </label>
            <select id="addresses"
                    class="form-select form-select-lg">
                <option selected
                        value="ул. Немига, 12">
                    ул. Немига, 12
                </option>
                <option value="ул. Николы Теслы, 19">
                    ул. Николы Теслы, 19
                </option>
                <option value="ул. Притыцкого, 156">
                    ул. Притыцкого, 156
                </option>
            </select>
        </div>
        <div class="col-md-6">
            <label for="count"
                   class="form-label">
                Количество
            </label>
            <input id="count"
                   class="form-control form-control-lg cart-item__count"
                   type="number"
                   value="${order.count}"
                   min="1"
                   max="10">
        </div>
        <div class="col-12">
            <label for="cost"
                   class="form-label">
                Сумма
            </label>
            <input id="cost"
                   class="form-control form-control-lg cart-item__count"
                   type="number"
                   value="${order.cost}"
                   min="1">
        </div>
        <div class="col-12">
            <label for="status"
                   class="form-label">
                Статус
            </label>
            <select id="status"
                    class="form-select form-select-lg">
                <c:if test="${order.status == 'ACTIVE'}">
                    <option selected
                            value="ACTIVE">
                        Активный
                    </option>
                    <option value="IN_PROGRESS">
                        В процессе
                    </option>
                    <option value="INACTIVE">
                        Не активный
                    </option>
                </c:if>

                <c:if test="${order.status == 'IN_PROGRESS'}">
                    <option selected
                            value="IN_PROGRESS">
                        В процессе
                    </option>
                    <option value="ACTIVE">
                        Активный
                    </option>
                    <option value="INACTIVE">
                        Не активный
                    </option>
                </c:if>

                <c:if test="${order.status == 'INACTIVE'}">
                    <option selected
                            value="INACTIVE">
                        Не активный
                    </option>
                    <option value="IN_PROGRESS">
                        В процессе
                    </option>
                    <option value="ACTIVE">
                        Активный
                    </option>
                </c:if>
            </select>
        </div>
        <div class="col-12 button-container">
            <button type="submit"
                    style="width: 100%">
                Изменить
            </button>
        </div>
    </form>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js"
        integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D"
        crossorigin="anonymous">
</script>
</body>
</html>
