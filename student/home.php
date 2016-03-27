<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Grading System</title>

    <!-- Bootstrap core CSS -->
    <link href="../static/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../static/cover.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      google.load("visualization", "1", {packages:["corechart"]});
      google.setOnLoadCallback(drawChart);
      function drawChart() {
        var data = google.visualization.arrayToDataTable([
          ['Sem', 'SPI'],
          <?php
            session_start();
            include '../php/getSPI.php';
            for($i = 0;$i < sizeof($keys2)-1;$i++)
              echo"['".$keys2[$i]."',".$spi_list[$keys2[$i]]."],";
            echo"['".$keys2[sizeof($keys2)-1]."',".$spi_list[$keys2[sizeof($keys2)-1]]."]";
          ?>
        ]);

        var options = {
          title: 'Line Chart', pointSize : 5, backgroundColor: '#333', is3D: true, 
          vAxis: {
            textStyle:{color: '#FFF'}
          },
          hAxis: {
            textStyle:{color: '#FFF'}
          }           
       };

        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="site-wrapper">

      <div class="site-wrapper-inner">

        <div class="cover-container">

          <div class="masthead clearfix">
            <div class="inner">
              <h3 class="masthead-brand">Grading System</h3>
              <nav>
                <ul class="nav masthead-nav">
                  <li class="active"><a href="#">Home</a></li>
                  <li><a href="#">Features</a></li>
                  <li><a href="#">Grades</a></li>
                  <li><a href="#">Attendance</a></li>
                  <li><a href="#">Contact</a></li>
                </ul>
              </nav>
            </div>
          </div>
          <br><br><br><br><br><br><br><br><br><br>
          <div class="inner cover">
            <?php 
              header('Content-Type: text/html; charset=utf-8');
              
              if (!empty($_GET['userName'])){
                echo "<h2 class='form-signin-heading'>Welcome, ";
                echo $_GET['userName'];
                echo $_SESSION['id'];  
                echo "</h2>";
             }
              else
                echo "<h2 class='form-signin-heading'>Wrong UserName or Password ";
            
            ?>
		      </div>
          <br><br>
          <div id="chart_div" style="width: 900px; height: 500px; left: 50%"></div>
          <!-- <div class="mastfoot">
            <div class="inner">
              <p>Created By <a href="#"></a>, <a href="#">Pranay Patil</a>.</p>
            </div>
          </div> -->
          <br><br>

          <div ><h2>
            Current CPI = <?php
                echo $curr_cpi;
            ?></h2>
          <div>
            <br><br><br>
        </div>

      </div>

    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../static/js/bootstrap.min.js"></script>
    
   </body>
</html>
