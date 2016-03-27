<?php
  include '../php/utility.php';
  session_start();
  // echo $_SESSION['id']."<br>";
  // $_SESSION['id'] = '131070007';
  $sql = "select sem from login_student where user_id='".$_SESSION['id']."'";
  $result = $conn->query($sql);
  $curr_sem = null;
  while ($row = $result->fetch_assoc()) {
    $curr_sem = $row['sem'];
  }
  $sql_subjects = "select * from subject_list
       where branch = (select branch from login_student where user_id='".$_SESSION['id']."')".
       "and sem = '".$curr_sem."'";
  $result_subjects = $conn->query($sql_subjects);
  $subjects = array();
  while ($row = $result_subjects->fetch_assoc()) {
      $subjects[] = $row['subject'];
  }
  // var_dump($subjects);
  $attendance_report = array();
  foreach ($subjects as $subject) {
    $report = array();
    $sql_attended = "select attended from student_attended 
        where student_id='".$_SESSION['id']."' ".
       "and subject = '".$subject."'";
    $result_attended = $conn->query($sql_attended);
    $attended = null;
    while ($row = $result_attended->fetch_assoc()) {
          $attended = $row['attended'];
    }
    $report['attended'] = $attended;
    $sql_total = "select teacher_id, total_lecs from teaches 
        where subject='".$subject."' ".
       "and sem = '".$curr_sem."'";
    $result_total = $conn->query($sql_total);
    $teacher_id = null;
    $toal_lecs = null;
    while ($row = $result_total->fetch_assoc()) {
          $toal_lecs = $row['total_lecs'];
          $teacher_id = $row['teacher_id'];
    }
    $report['toal_lecs'] = $toal_lecs;
    $sql_name = "select name from login_teacher 
        where user_id='".$teacher_id."'";
    $result_name = $conn->query($sql_name);
    $teacher_name = null;
    while ($row = $result_name->fetch_assoc()) {
          $teacher_name = $row['name'];
    }
    $report['teacher_name'] = $teacher_name;
    $attendance_report[$subject] = $report;
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
    <link rel="icon" href="../../favicon.ico">

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

  <body>

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
            <li ><a href="grades.php">Grades</a></li>
            <li class="active"><a href="attendance.php">Attendace</a></li>
            <li ><a href="contact.html">Contact</a></li>

            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../index.html?status=logout">LogOut</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron"  style="text-align:center" >
        <h2>Attendance Record</h2>
        <br><br>
        <?php
          // var_dump($attendance_report);
          foreach ($subjects as $subject) {
            $percentage = ((float)$attendance_report[$subject]['attended'] / (float)$attendance_report[$subject]['toal_lecs'])*100;
            echo "<h3 style='text-align:left'>".$subject."</h3><br>";
            echo "<h4>Total Lectures   : ".$attendance_report[$subject]['toal_lecs']."</h4>";
            echo "<h4>Attended Lectures: ".$attendance_report[$subject]['attended']."</h4>";
            echo "<h4>Faculty          : ".$attendance_report[$subject]['teacher_name']."</h4>";
            echo "<h4>Total Attendance : ".(int)$percentage."%</h4>";
            echo "<br><br><br>";
          }
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

