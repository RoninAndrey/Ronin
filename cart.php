<?php
// Установка соединения с базой данных
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "kondei";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Получение списка товаров из базы данных
$sql = "SELECT * FROM products";
$result = mysqli_query($conn, $sql);
?>

<!-- Отображение списка товаров -->
<h1>Товары</h1>
<table>
    <tr>
        <th>Название</th>
        <th>Цена</th>
        <th>Описание</th>
        <th>Картинка</th>
        <th>Корзина</th>
    </tr>
    <?php while ($row = mysqli_fetch_assoc($result)) { ?>
    <tr>
        <td><?php echo $row["name"]; ?></td>
        <td><?php echo $row["price"]; ?></td>
        <td><?php echo $row["description"]; ?></td>
        <td><img src="<?php echo $row["image"]; ?>" width="100" height="100"></td>
        <td>
            <form method="post" action="cart.php">
                <input type="hidden" name="product_id" value="<?php echo $row["id"]; ?>">
                <input type="number" name="quantity" value="1" min="1">
                <input type="submit" name="add_to_cart" value="Добавить в корзину">
            </form>
        </td>
    </tr>
    <?php } ?>
</table>

<?php mysqli_close($conn); ?>