<?php
session_start();
include_once "php/config.php";
if (!isset($_SESSION['unique_id'])) {
    header("location: login.php");
}
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Attendance Records</title>
    <!--Material Icon-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <!--Stylesheet-->
    <link rel="stylesheet" href="./css/attenrecord.css">
</head>
<body>
    <div class="container">
        <?php
        $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
        if (mysqli_num_rows($sql) > 0) {
            $row = mysqli_fetch_assoc($sql);
        }
        ?>
        <aside>
            <div class="logo" id="logo" style="margin-top: 1.5rem;display:flex;">
                <img src="php/images/<?php echo $row['img']; ?>" alt="">
                <h2 style="margin-left: 1rem;margin-top:0.5rem;"><?php echo $row['fname'] ?></h2>
            </div>
            <small style="display:flex;justify-content:center;bottom:12px;position:relative;right:18px">Faculty</small>

            <div class="close" id="close-btn">
                <span class="material-icons-sharp">close</span>
            </div>
            <div class="sidebar">
                <a href="./Faculty.php" class="active">
                    <span class="material-icons-sharp">grid_view </span>
                    <h3>Dashboard</h3>
                </a>
                <a href="./attenrecord.php">
                    <span class="material-icons-sharp"> people</span>
                    <h3>Attendance Record</h3>
                </a>
                
                <a href="./Leaveapp.php">
                    <span class="material-icons-sharp">contact_mail</span>
                    <h3>Leave Application</h3>
                </a>
                <a href="php/logout.php?logout_id=<?php echo $row['unique_id']; ?>" class="logout">
                    <span class="material-icons-sharp">logout</span>
                    <h3>Logout</h3>
                </a>
            </div>
        </aside>
        <main>
            <h1>Dashboard</h1>
            <section class="attendance">
            <div class="staff-attendance">
          <h1>Attendance List</h1>
          <table class="table">
            <thead>
              <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Depart</th>
                <th>Details</th>
                <th>Percantages</th>
              </tr>
            </thead>
            <tbody>
              <?php
              include 'subtest.php';
              $sql1 = "SELECT * FROM users";
              $query = mysqli_query($conn, $sql1);
              $data = array();
              if(mysqli_num_rows($query) > 0){
                  while($row1 = mysqli_fetch_assoc($query)){
                    if($row1['role'] === 'Student'){
                        $data[] = $row1;
                    }
                  }
                  $previous_row = null;
                    foreach ($data as $row1) {
                      if ($row1 != $previous_row){
                          echo "<tr>";
                          echo "<td>" .$row1['user_id']. "</td>";
                          echo "<td>" .$row1['fname']. "</td>";
                          echo "<td> EXTC </td>";
                          $da = $row1['fname'];
                          echo "<td><button style='background-color:white;'><a href='table.php?name=$da'>View</a></button></td>";
                          
                           $student = getTotalPresentCount($da);
                           echo "<td>  $student  </td>";
                           
                          echo "</tr>";
                      }
                      $previous_row = $row1;
                    }
              }
              ?>
            </tbody>
          </table>
        </div>
      </section>

        </main>
        <div class="right">
            <div class="top">
                <a href="./announce.php" class="active">
                    <span class="material-icons-sharp" id="notify" style="margin-top:0.5rem">
                        campaign
                    </span></a>
                <h2 style="padding-top: 0.5rem;"><?php echo $row['fname'] . '' . $row['lname'] ?></h2>
                <div class="logo">
                    <img src="php/images/<?php echo $row['img']; ?>" alt="">
                </div>
            </div>
        </div>
    </div>
    </div>
</body>

</html>