<?php 
if(session_status() === PHP_SESSION_NONE){
    session_start();
}

include 'connect.php';
$limit= 15;
$page = isset($_GET['page']) ? $_GET['page']:1;
$start =($page-1)*$limit;
$result = $conn->query("SELECT * FROM customers LIMIT $start, $limit");
$customers=$result->fetch_all(MYSQLI_ASSOC); 
$result1 = $conn->query("SELECT count(id) AS id FROM customers");
$custcount =$result1->fetch_all(MYSQLI_ASSOC); 
$total = $custcount[0]['id'];
$pages = ceil($total/$limit);
$previous = $page-1;
$Next =$page+1;
$conn->close();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>page pagination</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
   <div class="container-well">
    <h3 class="text-center" >Bootstrap pagination in php and mysql</h3>
    <div class="row">
    </div>
    <div style="height:600px; overflow-y:auto;">
     <table id="" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Mobile</th>
                <th>Address</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($customers as $customer):?>
            <tr>
              <td> <?= $customer['id'];?></td>
              <td> <?= $customer['name'];?></td>
              <td> <?= $customer['mobile'];?></td>
              <td> <?= $customer['address'];?></td>
              <td> <?= $customer['created_at'];?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
     </table>
    </div>
    <div style="position:fixed; bottom: 10px; right: 10px; color: green;">
        <strong>Learn web coding</strong>
    </div>
   </div>
   <div  class="text-center">
    <nav aria-label="page pagination">
  <ul class="pagination">
    <li class="page-item" ><a href="index.php?page=<?= $previous; ?>"></a>
      <span class="page-link">Previous</span>
    </li>
    <?php for($i=1; $i<=$pages ; $i++) : ?>
    <li><a href="index.php?page=<?= $i; ?>"><?=$i;?></a>
      </li>
    <?php endfor; ?> 
    <!-- <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item active">
      <span class="page-link">
        2
        <span class="sr-only">(current)</span>
      </span>
    </li> 
   <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li> -->
    <li class="page-item">
      <a class="page-link" href="index.php?page=<?= $Next; ?>">Next</a>
    </li>
  </ul>
</nav>
</div>
</body>
</html>