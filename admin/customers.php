<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v3.8.5">
    <title>Customer Page</title>


<?php session_start();
if (!isset($_SESSION['admin'])) {
  header("location:login.php");
}
 ?>
<?php include_once("./templates/top.php"); ?>
<?php include_once("./templates/navbar.php"); ?>
<div class="container-fluid">
  <div class="row">
    
    <?php include "./templates/sidebar.php"; ?>

      <div class="row">
      	<div class="col-10">
      		<h2>Report Customers</h2>
      	</div>
        <div class="col-2">
          <button data-toggle="modal" data-target="#add_custemer_modal" class="btn btn-primary btn-sm">print report</button>
          <button id="print-button" class="btn btn-primary btn-sm">Print Report</button>
          <script>
document.addEventListener("DOMContentLoaded", function() {
  var printButton = document.getElementById("print-button");



  printButton.addEventListener("click", function() {
    window.print(); // Trigger the browser's print functionality
  });
});
</script>

        </div>
      </div>
      
      <div class="table-responsive">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th>id</th>
              <th>Name</th>
              <th>Movie</th>
              <th>Theater</th>
              <th>Show_time</th>
              <th>Seat</th>
              <th>Total Seat</th>
              <th>Price</th>
              <th>Payment Date</th>
              <th>Booking Date</th>
              <th>Custemer</th>
            </tr>
          </thead>
          <tbody id="customer_list">
           <tbody id="product_list">
           <?php
include_once 'Database.php';
$result = mysqli_query($conn,"SELECT c.id,c.movie,c.booking_date,c.show_time,c.seat,c.totalseat,c.price,c.payment_date,c.custemer_id,u.username,t.theater FROM customers c INNER JOIN user u on c.uid = u.id INNER JOIN theater_show t on c.show_time = t.show");

$totalPrice = 0; // Initialize the total price

if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_array($result)) {
        $id = $row['id'];
        $price = $row['price'];
        $totalPrice += $price; // Add the price to the total

        // Display the booking details
        echo '<tr>';
        echo '<td>' . $row['id'] . '</td>';
        echo '<td>' . $row['username'] . '</td>';
        echo '<td>' . $row['movie'] . '</td>';
        echo '<td>' . $row['theater'] . '</td>';
        echo '<td>' . $row['booking_date'] . '</td>';
        echo '<td>' . $row['show_time'] . '</td>';
        echo '<td>' . $row['seat'] . '</td>';
        echo '<td>' . $row['totalseat'] . '</td>';
        echo '<td>' . $row['price'] . '</td>';
        echo '<td>' . $row['payment_date'] . '</td>';
        echo '<td>' . $row['custemer_id'] . '</td>';
        echo '</tr>';
    }
}

// Display the total price in the last row
echo '<tr>';
echo '<td colspan="7">Total Price:</td>';
echo '<td>$' . $totalPrice . '</td>';
echo '<td colspan="3"></td>'; // Assuming 3 empty columns for alignment
echo '</tr>';
?>

<!-- ... Rest of your HTML code -->




<!-- ... Rest of your HTML code -->



<!-- Add custemers Modal start -->
<div class="modal fade" id="add_custemer_modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Movie</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form name="myform" id="insert_movie" action="insert_data.php" method="post" enctype="multipart/form-data" onsubmit="return validateform()">
          <div class="row">
            
              <div class="col-12">
              <label>Username Id</label>
                <select class="form-control category_list" name="username_id">
                  <option value="">Select Username</option>
                  <?php
                  $result = mysqli_query($conn,"SELECT * FROM user");
                  if (mysqli_num_rows($result) > 0) {
  while($row = mysqli_fetch_array($result)) {
                  ?>
                  <option value="<?php echo $row['id'];?>"><?php echo $row['username'];?></option>
                  <?php
                }
              }
                  ?>
                </select>
            </div>
            <div class="col-12">
              <div class="form-group">
                <label>Movie</label>
                
                <select class="form-control category_list" name="movie">
                  <option>Select Username</option>
                  <?php
                  $result = mysqli_query($conn,"SELECT * FROM add_movie");
                  if (mysqli_num_rows($result) > 0) {
                    while($row = mysqli_fetch_array($result)) {
                      if($row['action']=="running"){
                  ?>
                  <option value="<?php echo $row['movie_name'];?>"><?php echo $row['movie_name'];?></option>
                  <?php
                }
                }
              }
              
                  ?>
                </select>
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <label>Show Time</label>
                <input type="text" name="show_time" class="form-control" placeholder="Enter Show">
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <label>Seats</label>
                <input type="text" name="seat" class="form-control" placeholder="Enter Seats">
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <label>Total Seat</label>
                <input type="number" name="totalseat" class="form-control" placeholder="Enter Total Seat">
              </div>
            </div>
            <div class="col-12">
              <div class="form-group">
                <label>Price</label>
                <input type="text" name="price" class="form-control" placeholder="Enter Price">
              </div>
            </div>
           <div class="col-12">
              <input type="submit" name="customers" class="btn btn-primary add-product" value="Add Product">
            </div>
          </div>
          
        </form>
        <div id="preview"></div>
      </div>
    </div>
  </div>
</div>
<!-- Add custemers- Modal end -->
<?php include_once("./templates/footer.php"); ?>



<script>  
function validateform(){  
var username_id=document.myform.username_id.value;  
var movie=document.myform.movie.value;  
var show_time=document.myform.show_time.value;
var seat=document.myform.seat.value;
var totalseat=document.myform.totalseat.value;
var price=document.myform.price.value;
  

if (username_id==""){  
  alert("Reqiure username");  
  return false;  
}else if(movie==""){  
  alert("Reqiure Movie");  
  return false;  
  } 
else if(show_time==""){  
  alert("Reqiure Show Time");  
  return false;  
  }
else if(seat==""){  
  alert("Reqiure seats");  
  return false;  
  }
else if(totalseat==""){  
  alert("Reqiure Total Seat");  
  return false;  
  }
else if(price==""){  
  alert("Reqiure Total Seat");  
  return false;  
  }
}

</script>
