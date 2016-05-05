<?php
  include '../php/utility.php';
  session_start();
  $sql = "select name from login_teacher where user_id='".$_SESSION['id']."'";
  $result = $conn->query($sql);
  $name = null;
  while ($row = $result->fetch_assoc()){
    $name = $row['name'];
  }

  $sql2 = "select * from teaches where teacher_id='".$_SESSION['id']."'";
  $result2 = $conn->query($sql2);
  $teaches = array();
  while ($row = $result2->fetch_assoc()){
    $subject = array();
    $subject['branch'] = $row['branch'];
    $subject['sem'] = $row['sem'];
    $subject['subject'] = $row['subject'];
    $teaches[] = $subject;
  }
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../icons/favicon.png">

    <title>Grading System</title>

    <!-- Bootstrap core CSS -->
    <link href="../static/bootstrap.min.css" rel="stylesheet">


    <!-- Custom styles for this template -->
    <link href="../static/navbar-fixed-top.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body style="background-image: url('../icons/back.jpg');background-attachment: fixed">

    <!-- Fixed navbar -->
    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Grading System</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li ><a href="home2.php">Home</a></li>
            <!-- <li ><a href="grades.php">Grades</a></li> -->
            <li class="active"><a href="attendance.php">Attendace</a></li>
            <li ><a href="contact.html">Contact</a></li>
            <li><a href="news.php">News</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../index.php?status=logout">LogOut</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron"  style="text-align:center" >
        <h2>Edit Attendance</h2>
        </div>
      </div>
        <?php 
            echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
            echo "<h2>Current Courses</h2><br><br>";
            foreach ($teaches as $subject) {
              echo "<h3 style='text-align:center'><a href='editAttendance.php?subject=".$subject['subject']."
              &sem=".$subject['sem']."'>Subject: ".$subject['subject']."</a></h3>";
              echo "<h4 style='text-align:center'>Branch: ".$subject['branch']."</h4>";
              echo "<h4 style='text-align:center'>Semester: ".$subject['sem']."</h4>";
            }
            echo "</div></div>";
        ?>
        
      </div>
          
    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="static/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript">
      function loginWarn() {
          alert("Please Sign In First");
      }
    </script>
  </body>
</html>

