<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tortikov</title>
    <link rel="icon" href="<c:url value="/images/logo.svg"/>">
    <link type="text/css" rel="stylesheet" href="<c:url value="/css/styles.css"/>">
    <link href="https://fonts.googleapis.com/css2?family=Jost:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div class="container">
        <div class="view-container">
            <header class="flex justify-content-between align-items-center mt-3">
                <a href="#"><img src="<c:url value="/images/logo.svg"/>" alt="Tortikov"></a>
                <nav>
                    <ul>
                        <li class="mr-3"><a class="link" href="#">Главная</a></li>
                        <li class="mr-3"><a class="link" href="#">Торты</a></li>
                        <li><a class="link" href="#">Контакты</a></li>
                    </ul>
                </nav>
                <div class="account-container">
                    <a class="mr-1"
                       href="#">
                        <img src="<c:url value="/images/account.svg"/>" alt="Войти">
                    </a>

                    <a href="#">
                        <img src="<c:url value="/images/cart.svg"/>" alt="Корзина">
                    </a>
                </div>
            </header>

            <div class="view-container__info mt-3">
                <div class="title">Открой новые горизонты сладости</div>
                <div class="subtitle">Авторские кондитерские изделия</div>
                <div class="flex justify-content-between">
                    <button class="mt-3">
                        Оставить заявку
                    </button>

                    <div class="view-cakes">
                        <div class="cake"
                             style="background-image: url('/images/cakes/klykvenniy.png')">
                            <img class="berry"
                                 style="left: -8rem; bottom: 3rem"
                                 src="<c:url value="/images/berry-2.png"/>"
                                 alt="Ягода">

                            <div>
                                <span>Клюквенный торт с маскарпоне</span>
                                <img src="<c:url value="/images/arrow.svg"/>" alt="Стрелка">
                            </div>
                        </div>

                        <div class="cake"
                             style="background-image: url('/images/cakes/klybnichniy.png')">
                            <img class="berry"
                                 style="top: -4rem; left: -4rem"
                                 src="<c:url value="/images/berry-3.png"/>"
                                 alt="Ягода">

                            <img class="berry"
                                 style="right: -4rem; bottom: -5rem"
                                 src="<c:url value="/images/berry-1.png"/>"
                                 alt="Ягода">

                            <div>
                                <span>Клубничный торт со сливками</span>
                                <img src="<c:url value="/images/arrow.svg"/>" alt="Стрелка">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="cakes-container">
            <div class="cakes-container__title">Любые торты на ваш выбор</div>

            <div class="cakes-container__cakes">
                <div class="cakes-cake">
                    <img class="berry"
                         style="top: -5rem; left: -1rem"
                         src="<c:url value="/images/berry-3.png"/>"
                         alt="Ягода">

                    <img class="cake-image"
                         src="<c:url value="/images/cakes/napoleon.png"/>"
                         alt="Наполеон">

                    <div class="cake-name">Наполеон</div>

                    <div class="cake-description">
                        Многие, отдавая предпочтение классике, сделают выбор в пользу «Наполеона».
                        Испечь его может каждый, так как состав предельно простой...
                    </div>
                </div>

                <div class="cakes-cake">
                    <img class="cake-image"
                         src="<c:url value="/images/cakes/praga.png"/>"
                         alt="Прага">

                    <div class="cake-name">Прага</div>

                    <div class="cake-description">
                        Классическая «Прага» с глубоким вкусом поразит в самое сердце любителей шоколада!
                    </div>
                </div>

                <div class="cakes-cake">
                    <img class="cake-image"
                         src="<c:url value="/images/cakes/blinniy.png"/>"
                         alt="Блинный торт">

                    <div class="cake-name">Блинный торт</div>

                    <div class="cake-description">
                        Простой блинный торт можно спокойно подать без повода.
                        Изделие очень просто готовится, если уже отработан навык приготовления тонких блинчиков.
                    </div>
                </div>

                <div class="cakes-cake">
                    <img class="cake-image"
                         src="<c:url value="/images/cakes/morkovniy.png"/>"
                         alt="Морковный торт">

                    <div class="cake-name">Морковный торт</div>

                    <div class="cake-description">
                        Морковь, орехи и нежный сыр — главные составляющие этого торта.
                        Обычно на него обращают внимание истинные гурманы, способные разглядеть в простом овоще огромный потенциал!
                    </div>
                </div>

                <div class="cakes-cake">
                    <img class="cake-image"
                         src="<c:url value="/images/cakes/molochniy.png"/>"
                         alt="Молочная девочка">

                    <div class="cake-name">“Молочная девочка”</div>

                    <div class="cake-description">
                        Если на приготовление торта у вас есть всего 1 час, выбирайте «Молочную девочку»!
                        Доступные продукты, простой рецепт, а результат превосходит все ожидания.
                        Украшайте десерт по вкусу: фрукты, ягоды, мастика — подойдет все.
                    </div>
                </div>

                <div class="cakes-cake">
                    <img class="berry"
                         style="top: -4rem; right: -3rem; transform: scaleX(-1)"
                         src="<c:url value="/images/berry-2.png"/>"
                         alt="Ягода">

                    <img class="cake-image"
                         src="<c:url value="/images/cakes/tryfelniy.png"/>"
                         alt="Трюфельный торт">

                    <div class="cake-name">Трюфельный торт</div>

                    <div class="cake-description">
                        Вот еще один вариант мегашоколадного лакомства.
                        Терпкий трюфельный вкус начинки и нежный бисквит — так в двух словах можно описать торт.
                    </div>
                </div>
            </div>
        </div>

        <div class="contact-container">
            <div class="position-relative">
                <img class="berry"
                     style="right: -7rem; top: -5rem; transform: scaleX(-1)"
                     src="<c:url value="/images/berry-2.png"/>"
                     alt="Ягода">

                <img class="berry"
                     style="left: -5rem; bottom: -5rem;"
                     src="<c:url value="/images/berry-1.png"/>"
                     alt="Ягода">

                <div class="request-form">
                    <div class="request-form__title">Чтобы сделать заказ, укажите телефон</div>

                    <div class="request-form__subtitle">Мы перезвоним вам в течение часа</div>

                    <form class="flex justify-content-between">
                        <input class="form-input"
                               type="tel"
                               placeholder="+375(33)333-33-33">
                        <button type="submit">Сделать заказ</button>
                    </form>
                </div>
            </div>

            <footer>
                <a href="#"><img src="<c:url value="/images/logo.svg"/>" alt="Tortikov"></a>

                <div class="flex direction-column align-items-center">
                    <div class="footer-title">Наши адреса</div>

                    <ul class="addresses-list">
                        <li class="mr-3">
                            <div>ул. Немига, 12</div>
                            <div>Телефон: +375 29 123 45 67</div>
                            <div>Время работы: 8:00 - 22:00</div>
                        </li>
                        <li class="mr-3">
                            <div>ул. Николы Теслы, 19</div>
                            <div>Телефон: +375 25 987 65 43</div>
                            <div>Время работы: 7:30 - 22:00</div>
                        </li>
                        <li>
                            <div>ул. Притыцкого, 156</div>
                            <div>Телефон: +375 44 765 43 21</div>
                            <div>Время работы: 8:00 - 22:00</div>
                        </li>
                    </ul>
                </div>

                <div>
                    <div class="footer-title">Наши соцсети</div>

                    <div class="flex justify-content-around">
                        <a href="#">
                            <img src="/images/social/facebook.svg">
                        </a>

                        <a href="#">
                            <img src="/images/social/instagram.svg">
                        </a>
                    </div>
                </div>
            </footer>
        </div>
    </div>
</body>
</html>
