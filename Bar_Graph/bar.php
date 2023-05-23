<?php 
  session_start();
  include_once "php/config.php";
  if(!isset($_SESSION['unique_id'])){
    header("location: login.php");
  }
?>
<!DOCTYPE html>
<html>
<head>
    <title>Attendance Analysis</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap");
* {
   margin: 0;
   padding: 0;
   box-sizing: border-box;
}
body{
 background:#f5f5f5;
 display:flex;
 align-items:center;
 justify-content: center;
 min-height:50vh ;
 
}
.container{
 display: flex;
 position: absolute;
 top: 1.5cm;
 left: 50%;
 transform: translate(-50%, 0);
 align-items: center;
 justify-content: center;
 gap: 200px;
}
.chart
{
padding: 2rem;
border: 1px solid white;
border-radius: 1rem;
background: white;
width: 700px;
box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}
canvas {
   /* Remove the position property to fix floating */
   /* overflow: hidden; */
}
#chat-container {
width: 100%;
height: 100%;
display: flex;
justify-content: center;
align-items: center;
background-color: #f5f5f5;
}

#chat-box {
text-align: center;
width: 80%;
position: absolute;
top: 15.5cm;
left: 50%;
transform: translate(-50%, 0);
width: 700px;
height: 150px;
background-color: white;
box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
display: flex;
flex-direction: column;
justify-content: space-between;
padding: 20px;
border-radius: 2rem;
text-align: center;
transition: all 300ms ease;

}
@keyframes typing {
0% {
 width: 0;
}
50% {
 width: 50%;
}
100% {
 width: 0;
}
} 

#chat-message {
display: flex;
justify-content: center;
align-items: center;
height: 100%;
text-align: center;
font-size: 18px;
line-height: 1.5;
font-family: "Poppins", sans-serif;
} 

       
    </style>
</head>
<body>
<div class="container">
  <div class="chart">
  <canvas id="barChart" width="600" height="400"></canvas>
    <?php
    // Data for the pie chart
    include 'SubjectP.php';
    $attn=$maths+$Physics+$Chemistry+$Bee+$Ema;
    $per=$attn/5;
    $avg=number_format($per, 2);
    $data = array(
        "Maths" => $maths,
        "Physics" => $Physics,
        "Chemistry" => $Chemistry,
        "BEE" => $Bee,
        "EMA" => $Ema,
        " " => 100,
    );
    ?>
     </div>
</div>

    
    <div id="chat-container">
        <div id="chat-box">
           <div id="typing-indicator"></div> 
          <div id="chat-message"></div>
        </div>
      </div>
     
    <script>
        var ctx = document.getElementById('barChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['maths', 'physics', 'chemistry','bee','ema','' ],
                datasets: [{
                    label: 'Percentage (%)',
                    data: <?php echo json_encode(array_values($data)); ?>,
                    backgroundColor: [
                        'rgba(255, 99, 132, 0.2)',
                        'rgba(54, 162, 235, 0.2)',
                        'rgba(255, 206, 86, 0.2)',
                        'rgba(75, 192, 192, 0.2)',
                        'rgba(153, 102, 255, 0.2)',
                        'rgba(255, 255, 255, 0)'
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(54, 162, 235, 1)',
                        'rgba(255, 206, 86, 1)',
                        'rgba(75, 192, 192, 1)',
                        'rgba(153, 102, 255, 1)',
                        'rgba(255, 255, 255, 0)'
                    ],
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true,
                            max: 100,
                            callback: function(value, index, values) {
                                return value + '%';
                            }
                        },
                        scaleLabel: {
                            display: true,
                            labelString: 'Percentage'
                        }
                    }]
                }
            }
        });
    </script>
      <script>
 // Change this value to test different attendance percentages

const chatBox = document.getElementById("chat-message");
const typingIndicator = document.getElementById("typing-indicator");

function displayMessage(message) {
  const chars = message.split("");
  let i = 0;
  const intervalId = setInterval(() => {
    chatBox.innerHTML += chars[i];
    i++;
    if (i === chars.length) {
      clearInterval(intervalId);
      chatBox.innerHTML += "<br>";
      typingIndicator.style.display = "none";
    }
  }, 50);
}

function simulateTyping() {
  typingIndicator.style.display = "block";
  const attendance =<?php echo $attn; ?>;

  if (attendance < 50) {
    displayMessage("Dear Student, your average attendance is <?php echo $avg; ?> %, which is very poor. Due to your uneven attendance it may affect your academic performances. Kindly contact your respective class in-charge within 2 working days. Also consider this warning at a prior note and fulfil your average attendance criterias.");
  } else if (attendance >= 50 && attendance < 75) {
    displayMessage("Dear Student, your average attendance is <?php echo $avg; ?> %, which is moderate.Kindly consider this warning at a prior note and fulfil your attendance criterias of the subjects with less attendance.");
  } else {
    displayMessage("Dear Student, your average attendance is <?php echo $avg; ?> %, which is above average .This is to recognize and acknowledge your performance of current month, with no absentee.");
  }
}

simulateTyping();
        
        </script>
</body>
</html>
