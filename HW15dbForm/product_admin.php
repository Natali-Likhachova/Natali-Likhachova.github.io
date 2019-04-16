<!doctype html>
<html lang="ru">
<head>
    <title>Админ-панель</title>
    <link rel="stylesheet" type="text/css" href="css/style_forms.css" />
</head>
<body>
<?php
$host = 'localhost';  // Хост, у нас все локально
$user = 'user_bd';    // Имя созданного вами пользователя
$pass = '1111'; // Установленный вами пароль пользователю
$db_name = 'my_db';   // Имя базы данных
$link = mysqli_connect($host, $user, $pass, $db_name); // Соединяемся с базой

// Ругаемся, если соединение установить не удалось
if (!$link) {
    echo 'Не могу соединиться с БД. Код ошибки: ' . mysqli_connect_errno() . ', ошибка: ' . mysqli_connect_error();
    exit;
}

//Если переменная Name передана
if (isset($_POST["Name"])) {
    //Если это запрос на обновление, то обновляем
    if (isset($_GET['red'])) {
        $sql = mysqli_query($link, "UPDATE `products` SET `Name` = '{$_POST['Name']}', 
                                                                `surname` = '{$_POST['surname']}', 
                                                                `sex` = '{$_POST['sex']}', 
                                                                `age` = '{$_POST['age']}', 
                                                                `boyORgirl` = '{$_POST['boyORgirl']}', 
                                                                `birthday` = '{$_POST['birthday']}', 
                                                                `family status` = '{$_POST['familyStatus']}', 
                                                                `social status` = '{$_POST['socialStatus']}', 
                                                                `residence` = '{$_POST['residence']}', 
                                                                `sleep` = '{$_POST['sleep']}', 
                                                                `walkingWithFriends` = '{$_POST['walkingWithFriends']}', 
                                                                `fishing` = '{$_POST['fishing']}', 
                                                                `playingGames` = '{$_POST['playingGames']}', 
                                                                `htmlBook` = '{$_POST['htmlBook']}', 
                                                                `numberOfBooks` = '{$_POST['numberOfBooks']}', 
                                                                `comment` = '{$_POST['comment']}',
                                                                `position` = '{$_POST['position']}',
                                                                `email` = '{$_POST['email']}',
                                                                `equipment` = '{$_POST['equipment']}',
                                                                `howToCookDinners` = '{$_POST['howToCookDinners']}',
                                                                `makeMoney` = '{$_POST['makeMoney']}',
                                                                `task` = '{$_POST['task']}',  
                                                                WHERE `ID`={$_GET['red']}");
    } else {
        //Иначе вставляем данные, подставляя их в запрос
        $sql = mysqli_query($link, "INSERT INTO `products` (`Name`, `surname`, `sex`, `age`, `boyORgirl`, `birthday`, `familyStatus`, `socialStatus`, `residence`, `sleep`, `walkingWithFriends`, `fishing`, `playingGames`, `htmlBook`, `numberOfBooks`, `comment`, `position`, `email`, `equipment`, `howToCookDinners`, `makeMoney`, `task`) 
                                           VALUES ('{$_POST['Name']}', 
                                           '{$_POST['surname']}', 
                                           '{$_POST['sex']}', 
                                           '{$_POST['age']}', 
                                           '{$_POST['boyORgirl']}', 
                                           '{$_POST['birthday']}', 
                                           '{$_POST['familyStatus']}', 
                                           '{$_POST['socialStatus']}', 
                                           '{$_POST['residence']}', 
                                           '{$_POST['sleep']}', 
                                           '{$_POST['walkingWithFriends']}', 
                                           '{$_POST['fishing']}', 
                                           '{$_POST['playingGames']}', 
                                           '{$_POST['htmlBook']}', 
                                           '{$_POST['numberOfBooks']}', 
                                           '{$_POST['comment']}', 
                                           '{$_POST['position']}', 
                                           '{$_POST['email']}', 
                                           '{$_POST['equipment']}', 
                                           '{$_POST['howToCookDinners']}', 
                                           '{$_POST['makeMoney']}', 
                                           '{$_POST['task']}')");
    }


}



//Если передана переменная red, то надо обновлять данные. Для начала достанем их из БД
if (isset($_GET['red'])) {
    $sql = mysqli_query($link, "SELECT `ID`, `Name`, `surname`, `sex`, `age`, `boyORgirl`, `birthday`, `familyStatus`, `socialStatus`, `residence`, `sleep`, `walkingWithFriends`, `fishing`, `playingGames`, `htmlBook`, `numberOfBooks`, `comment`, `position`, `email`, `equipment`, `howToCookDinners`, `makeMoney`, `task` FROM `products` WHERE `ID`={$_GET['red']}");
    $product = mysqli_fetch_array($sql);
}
?>
<div class="wrapper">

    <h1>Урок "Формы": теги и их атрибуты.</h1>
    <h2>Расскажите немного о себе...</h2>
    <p>Попробуйте созать анналогичную форму. Для целей демонстрации вполне подойдут и вымышленные.</p>

<form action="" method="post">
    <fieldset>
        <legend>Коротко о себе</legend>
        <ul class="zzz">
            <li>
                <label for="name">
                    Имя:
                    <input type="text" name="Name" id="name" value="<?= isset($_GET['red']) ? $product['Name'] : ''; ?>">
                </label>
            </li>
            <li>
                <label for="surname">
                    Фамилия:
                    <input type="text" id="surname" name="surname" value="<?= isset($_GET['red']) ? $product['Price'] : ''; ?>">
                </label>
            </li>
            <li>Пол:
                <label>
                    <input type="radio" name="sex" value="man" checked>
                    мужской
                </label>
                <label>
                    <input type="radio" name="sex" value="woman">
                    женский
                </label>
            </li>
            <li>
                <label for="age">
                    Возраст:
                    <input type="text" name="age" id="age" maxlength="3" size="3" value="<?= isset($_GET['red']) ? $product['age'] : ''; ?>">
                    лет
                </label>
            </li>
        </ul>
    </fieldset>
    <fieldset>
        <legend>
            Подробнее о себе
        </legend>
        <ul class="top">
            <li>
                <label>
                    <input type="radio" name="boyORgirl" value="boy" checked>
                    Молодой человек
                </label>
            </li>
            <li>
                <label>
                    <input type="radio" name="boyORgirl" value="girl">
                    Девушка
                </label>
            </li>
        </ul>
        <ul class="top">
            <li>
                <label for="birthday">
                    <input type="text" id="birthday" name="birthday" value="<?= isset($_GET['red']) ? $product['birthday'] : ''; ?>">
                    Дата рождения
                </label>
            </li>
            <li>
                <label for="family status">
                    <input type="text" id="family status" name="familyStatus" value="<?= isset($_GET['red']) ? $product['familyStatus'] : ''; ?>">
                    Семейное положение
                </label>
            </li>
            <li>
                <label for="social status">
                    <input type="text" id="social status" name="socialStatus" value="<?= isset($_GET['red']) ? $product['socialStatus'] : ''; ?>">
                    Социальный статус
                </label>
            </li>
            <li>
                <label for="residence">
                    <input type="text" id="residence" name="residence" value="<?= isset($_GET['red']) ? $product['residence'] : ''; ?>">
                    Местожительство
                </label>
            </li>
        </ul>
        <p>
            <b>
                Что вы обычно делаете на выходных:
            </b>
        </p>
        <ul class="top">
            <li>
                <label>
                    <input type="checkbox" name="sleep" value="yes" >
                    Сплю
                </label>
            </li>
            <li>
                <label>
                    <input type="checkbox" name="walkingWithFriends" value="yes">
                    Гуляю с друзьями
                </label>
            </li>
            <li>
                <label>
                    <input type="checkbox" name="fishing" value="yes">
                    Хожу на рыбалку
                </label>
            </li>
            <li>
                <label>
                    <input type="checkbox" name="playingGames" value="yes">
                    Играю в игры
                </label>
            </li>
        </ul>
        <p>
            <b>
                Рассказать о формах в книге, посвященной HTML:
            </b>
        </p>
        <p>
            <select name="htmlBook" id="html_book">
                <option value="siteFrequency">
                    Site frequency
                </option>
                <option value="bigBook">
                    Big Book Web Design
                </option>
                <option value="comprehensiveManual">
                    Comprehensive manual
                </option>
            </select>
        </p>
        <p>
            <b>
                Сколько книг вы прочитали за свою жизнь:
            </b>
        </p>
        <ul class="top">
            <li>
                <label>
                    <input type="radio" name="numberOfBooks" value="0-10">
                    0-10
                </label>
            </li>
            <li>
                <label>
                    <input type="radio" name="numberOfBooks" value="11-20">
                    11-20
                </label>
            </li>
            <li>
                <label>
                    <input type="radio" name="numberOfBooks" value="21-50">
                    21-50
                </label>
            </li>
            <li>
                <label>
                    <input type="radio" name="book" value="50+">
                    50+
                </label>
            </li>
        </ul>
        <p>
            <b>
                Ваши комментарии:
            </b>
        </p>
        <p>
            <textarea type="text" name="comment" cols="60" rows="10" id="text" value="<?= isset($_GET['red']) ? $product['comment'] : ''; ?>">
            </textarea>
        </p>
        <label for="position">
        </label>
        <select name="position" id="position" size="3">
            <option value="1">
                Первая позиция
            </option>
            <option value="2" selected>
                Вторая позиция
            </option>
            <option value="3">
                Третья позиция
            </option>
        </select>
    </fieldset>
    <fieldset>
        <legend>
            И в заключении
        </legend>
        <input type="text" name="for_you" value="Это поле было введено для вас" disabled>
        <p>
            <label for="email">
                <b>
                    Email:
                </b>
            </label>
        </p>
        <input type="email" name="email" id="email"  value="<?= isset($_GET['red']) ? $product['email'] : ''; ?>">
        <p>
            <b>
                Хотите подписаться на самую модную рассылку спама?
            </b>
        </p>
        <p>
            <span class="xxx">
                Выберите категории
            </span>
        </p>
        <ul class="top">
            <li>
                <label>
                    <input type="checkbox" name="equipment" value="yes">
                    Оборудование
                </label>
            </li>
            <li>
                <label>
                    <input type="checkbox" name="howToCookDinners" value="yes">
                    Как приготовить обеды
                </label>
            </li>
            <li>
                <label>
                    <input type="checkbox" name="makeMoney" value="yes">
                    Заработай миллион за два дня!
                </label>
            </li>
        </ul>
        <p>
            <b>
                На сколько сложная задача:
            </b>
        </p>
        <ul class="top">
            <li>
                <label>
                    <input type="radio" name="task" value="not at all" checked>
                </label>
                Совсем нет
            </li>
            <li>
                <label>
                    <input type="radio" name="task" value="so-so">
                </label>
                Так себе
            </li>
            <li>
                <label>
                    <input type="radio" name="task" value="barely managed">
                </label>
                Еле справились
            </li>
        </ul>
    </fieldset>
    <p colspan="2">
        <input type="submit" value="Отправить">
    </p>
    <table>


    </table>
</form>

</div>
</body>
</html>