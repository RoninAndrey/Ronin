<?php
session_start();
if (!$_SESSION['user']) {
    header('Location: /');
}
// ini_set("display_errors", 0);
// ini_set("display_startup_errors", 0);
// error_reporting(E_ALL);

?>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" type="text/css" href="assets/css/main.css">
    <link rel="icon" type="image/x-icon" href="img/logo.png" />
</head>
<body>
<main>
<table>
        <tr>
        <td>Ник:</td>
        <td class="lol"><a href="#"><?= $_SESSION['user']['full_name'] ?></a></td>
        </tr>
        <tr>
        <td>Почта:</td>
            <td class="lol"><a href="#"><?= $_SESSION['user']['email'] ?></a></td>
        </tr>
        <tr>
        <td>Телефон:</td>
            <td class="lol"><a href="#"><?= $_SESSION['user']['tel'] ?></a></td>
        </tr>
        <tr>
            <td>Логин</td>
            <td class="lol"><a href="#"><?= $_SESSION['user']['login'] ?></a></td>
        </tr>
        <tr>
            <td class="lol">
            </td>
        </tr>
        <tr>
            <td class="lol"><a href="vendor/logout.php" class="logout">Выход</a></td>
        </tr>
    </table>
    <div>
        <?php
         include "vendor/connect.php";
        $login = $_SESSION['user']['id'];
        $sql = "SELECT * FROM orders ";
        $sqlU = "SELECT * FROM orders WHERE id = '$login'";
        $queryU = mysqli_query($connect, $sqlU) or die (mysql_error());
        $query = mysqli_query($connect, $sql) or die (mysql_error());
        session_start();

        if($_SESSION['status'] == "admin"){?>
            <main>
            <div class="info">
      
                <h1>Все заявки</h1>
            </div>
            <table width="70%" cellpadding="5" cellspacing="5" >
    <tr>
        <td class="stolb"><strong>ID</strong></td>
        <td class="stolb"><strong>Почта </strong></td>
        <td class="stolb"><strong>Имя</strong></td>
    </tr>
    <?php while ($row = mysqli_fetch_array($query)) { ?>
        <tr>
            <td><?php echo $row['order_id'];?></td>
            <td><?php echo $row['order_email'];?></td>
            <td><?php echo $row['order_name'];?></td>
            <td><form method="POST" action="stat.php"><input type="text" name="stat" value="<?php echo $row['stat'];?>"></td>
            <td> <input name="order_id" type="hidden" value="<?php echo $row['order_id'];?>"><input type="submit" value="изменить"></form></td>
        </tr>
       
    <?php } ?>
    
    </table>

   
<?php
}


else if($_SESSION['user']) {
    
   

        
     
         ?>
             <div class="info">
                    <h1>Ваши заявки</h1>
                </div>
                <table width="70%" cellpadding="5" cellspacing="5" >
    <tr>
        <td class="stolb"><strong>ID</strong></td>
        <td class="stolb"><strong>Почта </strong></td>
        <td class="stolb"><strong>Имя</strong></td>
    </tr>
    <?php while ($row = mysqli_fetch_array($queryU)) { ?>
        <tr>
            <td><?php echo $row['order_id'];?></td>
            <td><?php echo $row['order_email'];?></td>
            <td><?php echo $row['order_name'];?></td>        
        </tr>
    <?php } ?>
    
    </table>
                <?php
   
        

            
             }?>
             

         

       
</div>
</main>

 


</html>