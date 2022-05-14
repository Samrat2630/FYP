<?php

include 'config.php';

session_start();

$admin_id = $_SESSION['admin_id'];

if(!isset($admin_id)){
   header('location:login.php');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>orders</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom admin css file link  -->
   <link rel="stylesheet" href="css/admin_style.css">

</head>
<body>
   
<?php include 'admin_header.php'; ?>

<section class="orders">

<h1 class="title">top selling products</h1>

   <div class="box-container">
   <?php  
         $sells =  mysqli_query($conn, "SELECT total_products, placed_on FROM `orders` WHERE payment_status = 'completed' ORDER BY placed_on") or die('query failed');
         if(mysqli_num_rows($sells) > 0){
            while($fetch_sells = mysqli_fetch_assoc($sells)){
      ?>
      <div>
          <p><span><?php echo $fetch_sells['total_products']; ?></span> </p>
         <p><span><?php echo $fetch_sells['placed_on']; ?></span> </p>
      </div>
      <?php
         }
      }else{
         echo '<p class="empty">!!</p>';
      }
      ?>
   </div>

</section>


<section class="add-products">
   <form action="" method="post" enctype="multipart/form-data">
      <h3>add product</h3>
      <input type="text" name="name" class="box" placeholder="enter product name" required>
      <input type="number" min="0" name="price" class="box" placeholder="enter product price" required>
      <input type="file" name="image" accept="image/jpg, image/jpeg, image/png" class="box" required>
      <input type="submit" value="add product" name="add_product" class="btn">
   </form>

</section>
<!-- custom admin js file link  -->
<script src="js/admin_script.js"></script>

</body>
</html>