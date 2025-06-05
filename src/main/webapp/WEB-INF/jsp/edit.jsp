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
                   href="<c:url value="/tortikov/main"/>">
                    Главная
                </a>
            </li>
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
    <c:if test="${mode == 'users'}">
        <form class="row g-3 needs-validation"
              action="<c:url value="/tortikov/user/update?id=${user.id}"/>"
              method="post"
              novalidate>
            <div class="col-md-12">
                <label for="user-fio"
                       class="form-label">
                    ФИО
                </label>
                <input id="user-fio"
                       name="fullName"
                       class="form-control form-control-lg"
                       type="text"
                       value="${user.fullName}"
                       required>
                <div class="invalid-feedback invalid-message">
                    Укажите ФИО
                </div>
            </div>
            <div class="col-md-12">
                <label for="phone"
                       class="form-label">
                    Номер телефона
                </label>
                <input id="phone"
                       type="tel"
                       class="form-control form-control-lg phone-mask"
                       name="phone"
                       value="${user.phone}"
                       placeholder="+375(99)99-99-999"
                       aria-label="Номер телефона"
                       aria-describedby="inputGroupPrepend"
                       required>
                <div class="invalid-feedback invalid-message">
                    Укажите номер телефона
                </div>
            </div>
            <div class="col-md-12">
                <label for="roles"
                       class="form-label">
                    Роль
                </label>
                <select id="roles"
                        name="role"
                        class="form-select form-select-lg">
                    <option selected
                            value="${user.role}">
                            ${user.role.name}
                    </option>
                    <c:if test="${user.role != 'ADMIN'}">
                        <option value="ADMIN">
                            Администратор
                        </option>
                    </c:if>
                    <c:if test="${user.role != 'USER'}">
                        <option value="USER">
                            Пользователь
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
    </c:if>

    <c:if test="${mode == 'orders'}">
        <form class="row g-3 needs-validation"
              action="<c:url value="/tortikov/order/update?id=${order.id}"/>"
              method="post"
              novalidate>
            <div class="col-md-6">
                <label for="fio"
                       class="form-label">
                    ФИО заказчика
                </label>
                <input id="fio"
                       name="fio"
                       class="form-control form-control-lg"
                       type="text"
                       value="${order.fio}"
                       required>
                <div class="invalid-feedback invalid-message">
                    Укажите ФИО
                </div>
            </div>
            <div class="col-md-6">
                <label for="cakesName"
                       class="form-label">
                    Наименование торта/ов, шт.
                </label>
                <input id="cakesName"
                       name="cakesName"
                       class="form-control form-control-lg"
                       type="text"
                       value="${order.cakesName}"
                       required>
                <div class="invalid-feedback invalid-message">
                    Укажите наименование
                </div>
            </div>
            <div class="col-md-12">
                <label for="addresses"
                       class="form-label">
                    Адрес доставки
                </label>
                <select id="addresses"
                        name="address"
                        class="form-select form-select-lg">
                    <option selected
                            value="${order.address}">
                            ${order.address}
                    </option>
                    <c:if test="${order.address != 'ул. Немига, 12'}">
                        <option value="ул. Немига, 12">
                            ул. Немига, 12
                        </option>
                    </c:if>
                    <c:if test="${order.address != 'ул. Николы Теслы, 19'}">
                        <option value="ул. Николы Теслы, 19">
                            ул. Николы Теслы, 19
                        </option>
                    </c:if>
                    <c:if test="${order.address != 'ул. Притыцкого, 156'}">
                        <option value="ул. Притыцкого, 156">
                            ул. Притыцкого, 156
                        </option>
                    </c:if>
                </select>
            </div>
            <div class="col-12">
                <label for="cost"
                       class="form-label">
                    Сумма
                </label>
                <input id="cost"
                       name="cost"
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
                        name="status"
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
    </c:if>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"
        integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r"
        crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.min.js"
        integrity="sha384-RuyvpeZCxMJCqVUGFI0Do1mQrods/hhxYlcVfGPOfQtPJh0JCw12tUAZ/Mv10S7D"
        crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.2.1/dist/jquery.min.js"
        type="text/javascript">
</script>
<script src="https://cdn.jsdelivr.net/npm/jquery.maskedinput@1.4.1/src/jquery.maskedinput.js"
        type="text/javascript">
</script>
<script>
    $(".phone-mask").mask("+375(99)99-99-999");
</script>
<script src="/js/script.js"></script>
</body>
</html>
