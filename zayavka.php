<?php
session_start();

// Проверка, была ли нажата кнопка "Добавить в корзину"
if (isset($_POST["add_to_cart"])) {
    // Получение данных о товаре из базы данных
    $product_id = $_POST["product_id"];
    $quantity = $_POST["quantity"];

    $servername = "localhost";
    $username = "";
    $password = "root";
    $dbname = "kondei";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    $sql = "SELECT * FROM products WHERE id = '$product_id'";
    $result = mysqli_query($conn, $sql);

    if (mysqli_num_rows($result) == 1) {
        $row = mysqli_fetch_assoc($result);

        // Добавление товара в корзину
        $_SESSION["cart"][$product_id]["name"] = $row["name"];
        $_SESSION["cart"][$product_id]["price"] = $row["price"];
        $_SESSION["cart"][$product_id]["quantity"] = $quantity;
    }

    mysqli_close($conn);
}

// Проверка, была ли нажата кнопка "Оформить заказ"
if (isset($_POST["place_order"])) {
    // Получение данных из формы заказа
    $name = $_POST["name"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];

    // Сохранение заказа в базе данных
    $servername = "localhost";
    $username = "username";
    $password = "password";
    $dbname = "database_name";

    $conn = mysqli_connect($servername, $username, $password, $dbname);

    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }

    // Создание записи в таблице orders
    $sql = "INSERT INTO orders (name, email, phone) VALUES ('$name', '$email', '$phone')";
    mysqli_query($conn, $sql);
    $order_id = mysqli_insert_id($conn);

    // Создание записей в таблице order_items для каждого товара в корзине
    foreach ($_SESSION["cart"] as $product_id => $product) {
        $name = $product["name"];
        $price = $product["price"];
        $quantity = $product["quantity"];

        $sql ="INSERT INTO order_items (order_id, product_id, name, price, quantity) VALUES ('$order_id', '$product_id', '$name', '$price', '$quantity')";
        mysqli_query($conn, $sql);
    }

    // Очистка корзины
    $_SESSION["cart"] = array();

    mysqli_close($conn);

    echo "Заказ успешно оформлен.";
}
?>

<!-- Отображение корзины товаров -->
<h1>Корзина</h1>
<table>
    <tr>
        <th>Название</th>
        <th>Цена</th>
        <th>Количество</th>
        <th>Сумма</th>
    </tr>
    <?php
    $total = 0;
    foreach ($_SESSION["cart"] as $product_id => $product) {
        $name = $product["name"];
        $price = $product["price"];
        $quantity = $product["quantity"];
        $subtotal = $price * $quantity;
        $total += $subtotal;
    ?>
    <tr>
        <td><?php echo $name; ?></td>
        <td><?php echo $price; ?></td>
        <td><?php echo $quantity; ?></td>
        <td><?php echo $subtotal; ?></td>
    </tr>
    <?php } ?>
    <tr>
        <th colspan="3">Итого:</th>
        <td><?php echo $total; ?></td>
    </tr>
</table>

<!-- Форма заказа -->
<h2>Оформить заказ</h2>
<form method="post" action="cart.php">
    <label for="name">Имя:</label>
    <input type="text" name="name" required><br>

    <label for="email">Email:</label>
    <input type="email" name="email" required><br>

    <label for="phone">Телефон:</label>
    <input type="tel" name="phone" required><br>

    <input type="submit" name="place_order" value="Оформить заказ">
</form>