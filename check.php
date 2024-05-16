<?php

$data = filter_var(trim($_POST['data']));
$name = filter_var(trim($_POST['name']));
$marka = filter_var(trim($_POST['marka']));
$problem = filter_var(trim($_POST['problem']));
$time = filter_var(trim($_POST['time']));




$mysql = new mysqli('localhost', 'root', '', 'kondei');
$mysql->query("INSERT INTO  `orders` ( `date`, `marka`, `name`, `problem`, `time`, `stat`) VALUES ('$data','$marka','$name','$problem','$time','в обработке')");
header('Location: Главная.php');
$mysql->close();
