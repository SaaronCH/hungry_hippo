<?php
$localhost='localhost';
$db_username='root';
$db_password='Password1973';
$db_name='hungry_hippo';

$conn = mysqli_connect($localhost,$db_username,$db_password,$db_name);

$query="Select * from foods";
$result = mysqli_query($conn, $query);
$rows= mysqli_fetch_all($result, MYSQLI_ASSOC);

?>




<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Hungry Hippo | Roshan Shrestha</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous">
  </script>
</head>

<body class="container cards-wrapper d-flex gx-4">
  <div class="row  gx-4 gy-4">
  <?php foreach($rows as $datus): ?>
    <div class="col-12 col-md-6  col-lg-4">
      <div class="card h-100">
        <img src="<?php echo $datus['imageURL']; ?>" class="card-img-top" >
        <div class="card-body">
          <h3 class="card-title"><?php echo $datus['name']; ?></h3>
          <p class="card-text">
            <?php if (isset($datus['recommendedForKid']) && $datus['recommendedForKid'] == 1): ?>
              <h4>Recommended for kids <span class="badge text-bg-secondary">New</span></h4>
            <?php else: ?>
              <h4>Not healthy for kids Consumption!<span class="badge text-bg-secondary">New</span></h4>
            <?php endif; ?>
          </p>
          <h3>
            <?php 
              echo $datus['category'];
            ?>
          </h3> 

          <h5>
            <?php 
              echo $datus['nutritionInfo'];
            ?>
          </h5> 

          
          
           <h3>
            <?php 
              $nrs=$datus['price']*135;
              echo "NRP.".$nrs;
            ?>
          </h3> 
          
          <a href="#" class="btn btn-primary">
          Add To Basket <img src="add-to-cart.png">
          </a>

          <a href="#" class="btn btn-primary">Remove <img src="empty-cart.png">
          </a>
              
          
          
        </div>
      </div>
    </div>
  <?php endforeach; ?>
  </div>
</body>

  
</body>

</html>