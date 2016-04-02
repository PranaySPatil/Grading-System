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

  $subject_list = array();
  $subject_table_list = array();
  $credits_list = array();
  $type_list = array();
  for($sem=1;$sem<=$curr_sem;$sem++){
    $sql_subjects = "select * from subject_list
       where branch = (select branch from login_student where user_id='".$_SESSION['id']."')".
       "and sem = '".$sem."'";
    $result_subjects = $conn->query($sql_subjects);
    $subjects = array();
    $tables = array();
    $credits = array();
    $types = array();
    while ($row = $result_subjects->fetch_assoc()) {
      $subjects[] = $row['subject'];
      $tables[] = $row['table_name'];
      $credits[] = $row['credits'];
      $types[] = $row['type'];
    }
    $subject_list[$sem] = $subjects;
    $subject_table_list[$sem] = $tables;
    $credits_list[$sem] = $credits;
    $type_list[$sem] = $types;
    //var_dump($subject_list);
  }
  // echo $curr_sem;
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
            <li class="active"><a href="grades.php">Grades</a></li>
            <li ><a href="attendance.php">Attendace</a></li>
            <li ><a href="contact.html">Contact</a></li>
            <li ><a href="news.php">News</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../index.html?status=logout">LogOut</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <!-- <div class="container">

      <div class="jumbotron"  style="text-align:center" > -->
        <div class="container">
      
      <div class="jumbotron"  style="text-align:center" >
        <h2>Grades Record</h2>
        <!-- <br><br> -->
      </div>
    </div>
        <?php
          include '../php/getSPI.php';
          for($sem=$curr_sem;$sem>0;$sem--){
            echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
            echo "<h2>Sem: ".$sem."</h2><br>";
            if(array_key_exists("sem".$sem, $spi_list))
              echo "<h3>SPI: ".$spi_list['sem'.$sem]."</h3><br>";
            echo "<table class='table table-responsive table-striped table-bordered'>";
            echo "<thead><tr><th>Subject</th><th>Grade</th><th>TA</th><th>IST1</th><th>IST2</th><th>ESE</th></tr></thead>";
            echo "<tbody>";
            foreach (array_combine($subject_list[$sem], $subject_table_list[$sem]) as $subject => $table_name) {
              // if($sem == 1)
              //   echo $table_name."<br>";
              echo "<tr>";
              echo "<td>".$subject."</td>";
              $sql_mrks = "select * from ".$table_name." where student_id='".$_SESSION['id']."'";
              $result_mrks = $conn->query($sql_mrks);
              while ($row = $result_mrks->fetch_assoc()) {
                echo "<td>".$row['grade']."</td>";
                if(substr( $table_name, 0, 3 ) === "sub")
                  echo "<td>".$row['ta']."</td>";
                if(substr( $table_name, 0, 3 ) === "sub")
                  echo "<td>".$row['ist1']."</td>";
                if(substr( $table_name, 0, 3 ) === "sub")
                  echo "<td>".$row['ist2']."</td>";
                if(substr( $table_name, 0, 3 ) === "sub")
                  echo "<td>".$row['ese']."</td>";
              }
              echo "</tr>";
            }
            echo "</tbody>";
            echo "</table>"."<br></div></div>";

          }
        ?>
        
     <!--  </div>
          
    </div> --> <!-- /container -->


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

