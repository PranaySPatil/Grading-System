<?php
  include '../php/utility.php';
  session_start();
  // echo $_GET['subject']."<br>".$_GET['sem'];
  $teacher_id = $_SESSION['id'];
  $subject = $_GET['subject'];
  $sem = $_GET['sem'];

  $total_lecs = null;
  $sql2 = "select total_lecs from teaches where subject='".$subject."'";
  $result2 = $conn->query($sql2);
  $table_name = null;
  $type = null;
  while ($row = $result2->fetch_assoc()){
    $total_lecs = $row['total_lecs'];
  }

  $sql = "select user_id from login_student where sem='".$sem."'";
  $result = $conn->query($sql);
  $student_ids = array();
  $attended = array();
  while ($row = $result->fetch_assoc()){
    $user_id = $row['user_id'];
    $student_ids[] = $user_id;
    $sql3 = "select attended from student_attended where student_id='".$user_id."' 
              and subject='".$subject."'";
    $result3 = $conn->query($sql3);
    $a = null;
    while ($row2 = $result3->fetch_assoc()){
      $a = $row2['attended'];
    }
    $attended[] = $a;
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
    <script src="../static/js/jquery.js"></script>
    <!-- <script src="../static/js/submitPost.js"></script> -->
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
            <li class="active"><a href="">Attendace</a></li>
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
        
        <?php
          echo "<h2>".$subject."</h2><br><br>";
          $i = 0;
          echo "<form role='form' action='../php/updateAttendance.php' method='post'>";
          echo "<div class='form-group'><label for='total_lecs'><h4>Total Lectures<h4></label><br>";
          echo "<input type='text' name='total' id='total' value='".$total_lecs."'>";
          echo "</div><br><br>";
          echo "<input type='hidden' value='".count($student_ids)."' name='total_forms'  />";
          echo "<input type='hidden' value='".$subject."' name='subject'  />";
          foreach (array_combine($student_ids, $attended) as $student => $attendace) {
            echo "<h4>".$student."</h4>";
            echo "<input type='hidden' value='".$student_ids[$i]."' name='student_id".$i."'/>";
            echo "<div class='form-group'><label for='attended'>Attended</label> ";
            echo "<input type='text' name='attended".$i."' value='".$attendace."'>";
            echo "</div><br>";
            $i++;
            // echo "<h2>".$student." ".$attendace."</h2>";
          //   echo "<h3>".$student_ids[$i]."</h3><br>";
          //   echo "<form role='form' action='../php/updateMarks.php' method='post'>";
          //   // echo "<form role='form' action='' method=''>";
          //   echo "<input type='hidden' value='".$student_ids[$i]."' name='student_id' id='student_id' />";
          //   echo "<input type='hidden' value='".$table_name."' name='table_name' id='table_name' />";
          //   echo "<input type='hidden' name='redirurl' value='".$_SERVER['HTTP_REFERER']."' />";
          //   if(strcmp($type, '1')==0){
          //     echo "<div class='form-group'><label for='ist1'>IST1</label><br>";
          //     echo "<input type='text' name='ist1' id='ist1' value='".$student['ist1']."'>";
          //     echo "</div>";
          //     echo "<div class='form-group'><label for='ist2'>IST2</label><br>";
          //     echo "<input type='text' name='ist2' id='ist2' value='".$student['ist2']."'>";
          //     echo "</div>";
          //     echo "<div class='form-group'><label for='ese'>ESE</label><br>";
          //     echo "<input type='text' name='ese' id='ese' value='".$student['ese']."'>";
          //     echo "</div>";
          //     echo "<div class='form-group'><label for='ta'>TA</label><br>";
          //     echo "<input type='text' name='ta' id='ta' value='".$student['ta']."'>";
          //     echo "</div>";
          //     echo "<div class='form-group'><label for='grade'>Grade</label><br>";
          //     echo "<input type='text' name='grade' id='grade' value='".$student['grade']."'>";
          //     echo "</div>";
          //   }
          //   else{
          //     echo "<div class='form-group'><label for='grade'>Grade</label><br>";
          //     echo "<input type='text' name='grade' id='grade' value='".$student['grade']."'>";
          //     echo "</div>";
          //   }
          //   echo "<button type='submit' class='btn btn-default'>Submit</button></form><br><br>";
          //   $i++;
          }
          echo "<button type='submit' class='btn btn-default'>Submit</button></form><br><br>";
        ?>
      </div>
          
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../static/js/bootstrap.min.js"></script>
    
    <script language="javascript" type="text/javascript">
      function loginWarn() {
          alert("Please Sign In First");
      }
    </script>
  </body>
</html>

