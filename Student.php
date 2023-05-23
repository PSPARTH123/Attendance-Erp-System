<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: login.php");
  }
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Students Dashboard</title>
    <!--Material Icon-->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
    <!--Stylesheet-->
    <link rel="stylesheet" href="./css/student.css">
</head>
<body>
    <div class="container">
      <?php 
            $sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$_SESSION['unique_id']}");
            if(mysqli_num_rows($sql) > 0){
              $row = mysqli_fetch_assoc($sql);
            }
          ?>
        <aside>
            <div class="logo" id="logo" style="margin-top: 1.5rem;display:flex;">
                <img src="php/images/<?php echo $row['img']; ?>" alt="">
                <h2 style="margin-left: 1rem;margin-top:0.5rem;"><?php echo $row['fname']?></h2>
            </div>
            <small style="display:flex;justify-content:center;bottom:12px;position:relative;right:15px">Student</small>

            <div class="close" id="close-btn">
                <span class="material-icons-sharp">close</span>
            </div>
            <div class="sidebar">
                <a href="./Student.php" class="active">
                <span class="material-icons-sharp">grid_view </span>
                <h3>Dashboard</h3>
            <a href="./Bar_Graph/bar.php">
                <span class="material-icons-sharp">bar_chart</span>
                <h3>Analytics</h3>
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
            <div class="insights">
                <div class="attendance">
                    <span class="material-icons-sharp">analytics</span>
                    <div class="middle">
                       
                        <div class="left">
                        <h2>Section</h2><br>
                            <h3>Branch: EXTC</h3>
                            <h3>Class: TE</h3>
                            <h3>Class Strength: 70</h3>
                        </div>
                        <div class="progress">
                            <svg>
                                <!--<circle cx='38' cy='38' r='36'></circle>-->
                            </svg>
                            <div class="number">
                                <!--<p>90%</p>-->
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="Staff">
                    <span class="material-icons-sharp">person</span>
                    <div class="middle">
                        <div class="hd">
                        <h2>Profile</h2><br>
                            <h3>Roll No.: <?php echo $row['user_id'] ?></h3> 
                            <h3>Dept.: EXTC</h3>
                            <h3>Email ID.: <?php echo $row['email'] ?></h3>
                        </div>
                        <div class="progress">
                        
                            <div class="number">
                                
                            </div>
                        </div>
                    </div>

                </div>
                <div class="Leaves">
                    <span class="material-icons-sharp">event</span>
                    <div class="middle">
                        
                        <div class="left">
                        <h2>Upcoming Activities</h2>
                            <h3>1. Oscillations'23</h3>
                            <h3>2. VNPS'23</h3>
                            <h3>3. Farewell Party</h3>
                        </div>
                        <div class="progress">
                            <svg>
                                <!--<circle cx='38' cy='38' r='36'></circle>-->
                            </svg>
                            <div class="number">
                                <!--<p>50%</p>-->
                            </div>
                        </div>
                    </div>

                </div>
                
            </div>
            <div class="staff-attendance">
                <h2>Subject Attendance</h2>
                <table>
                    <thead>
                        <tr>
                      <th>SR NO</th>
                      <th>Name of subject</th>
                      <th>faculty</th>
                      <th>Details</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>01</td>
                            <td>Maths</td>
                            <td>Neha Gharat</td>
                            <td class="primary"> <a href="./sub_atten/Sub_Maths.php">Details</a></td>
                        </tr>
                        <tr>
                            <td>02</td>
                            <td>Physics</td>
                            <td>Sundhya Suplakar</td>
                            <td class="primary"> <a href="./sub_atten/Sub_physics.php">Details</a></td>
                        </tr>
                        <tr>
                            <td>03</td>
                            <td>Chemistry</td>
                            <td>Trupti Shah</td>
                            <td class="primary"> <a href="./sub_atten/Sub_chemistry.php">Details</a></td>
                        </tr> <tr>
                            <td>04</td>
                            <td>EMA</td>
                            <td>Ashwini Katkar</td>
                            <td class="primary"> <a href="./sub_atten/Sub_ema.php">Details</a></td>
                        </tr>
                        <tr>
                            <td>05</td>
                            <td>BEE</td>
                            <td>Bhakti Jadhav</td>
                            <td class="primary"> <a href="./sub_atten/Sub_bee.php">Details</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </main>
        <div class="right">
            <div class="top">
            <a href="./alert.php" class="active">
                <span  id="notify" class="material-icons-sharp" style="margin-top:0.5rem">
                    notifications
                    </span></a>
                    <h2  style="padding-top: 0.5rem;"><?php echo $row['fname'].''.$row['lname'] ?></h2>
                    <div class="logo">
                    <img src="php/images/<?php echo $row['img']; ?>" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
