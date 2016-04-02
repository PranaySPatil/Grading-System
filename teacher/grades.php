<?php
  include '../php/utility.php';
  session_start();
  // echo $_GET['subject']."<br>".$_GET['sem'];
  $subject = $_GET['subject'];
  $sem = $_GET['sem'];
  $sql2 = "select table_name,type from subject_list where subject='".$subject."'";
  $result2 = $conn->query($sql2);
  $table_name = null;
  $type = null;
  while ($row = $result2->fetch_assoc()){
    $table_name = $row['table_name'];
    $type = $row['type'];
  }
  // echo $type."<br>";
  // echo $table_name."<br>";
  $sql = "select user_id from login_student where sem='".$sem."'";
  $result = $conn->query($sql);
  $student_ids = array();
  $students = array();
  while ($row = $result->fetch_assoc()){
    $student = array();
    $user_id = $row['user_id'];
    $student_ids[] = $user_id;
    $sql3 = "select * from ".$table_name." where student_id='".$user_id."'";
    $result3 = $conn->query($sql3);
    while ($row2 = $result3->fetch_assoc()){
      //echo "In While <br>";
      if(strcmp($type, '1')==0){
        $student['ta'] = $row2['ta'];
        $student['grade'] = $row2['grade'];
        $student['ist1'] = $row2['ist1'];
        $student['ist2'] = $row2['ist2'];
        $student['ese'] = $row2['ese'];
      }
      else{
        $student['grade'] = $row2['grade'];
      }
      // var_dump($student);
      // echo "<br>";
    }
    $students[$user_id] = $student;
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
    <script src="../static/js/jquery.js"></script>
    <!-- <script src="../static/js/submitPost.js"></script> -->
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
            <li class="active"><a href="">Grades</a></li>
            <li ><a href="attendance.php">Attendace</a></li>
            <li ><a href="contact.html">Contact</a></li>
            <li><a href="news.php">News</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../index.html?status=logout">LogOut</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
    <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <?php
        if(strcmp($type, '1')==0)
        {
      ?>
      <button data-toggle="collapse" data-target="#gradeForm" style="float:right;margin:8px">Generate Grades</button>
      <?php
         }   
      ?>
      <div class="jumbotron"  style="text-align:center" >
        <?php
        echo "<h2>".$subject."</h2>";
        ?>
        <div id="gradeForm" class="collapse">
          <form role='form' action=''>
            <div class='form-group'><label for='up10'>10 Above </label><br>
              <input type='text' name="up10" id="ten">
            </div>
            <div class='form-group'><label for='up9'>9 Above </label><br>
              <input type='text' name='up9' id='nine'>
            </div>
            <div class='form-group'><label for='up8'>8 Above </label><br>
              <input type='text' name='up8' id='eight'>
            </div>
            <div class='form-group'><label for='up7'>7 Above </label><br>
              <input type='text' name='up7' id='seven'>
            </div>
            <div class='form-group'><label for='up6'>6 Above </label><br>
              <input type='text' name='up6' id='six'>
            </div>
            <div class='form-group'><label for='up5'>5 Above </label><br>
              <input type='text' name='up5' id='five'>
            </div>
            <div class='form-group'><label for='up4'>4 Above </label><br>
              <input type='text' name='up4' id='four'>
            </div>
            <button onclick="generateGrade();return false;">Generate</button></form>
          </form>
        </div>  
      </div>
    </div>
        <?php          
          $i = 0;
          foreach ($students as $student) {
            echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
            echo "<h3>".$student_ids[$i]."</h3><br>";
            echo "<form role='form' action='../php/updateMarks.php' method='post'>";
            // echo "<form role='form' action='' method=''>";
            echo "<input type='hidden' value='".$student_ids[$i]."' name='student_id' id='student_id' />";
            echo "<input type='hidden' value='".$table_name."' name='table_name' id='table_name' />";
            echo "<input type='hidden' name='redirurl' value='".$_SERVER['HTTP_REFERER']."' />";
            if(strcmp($type, '1')==0){
              echo "<div class='form-group'><label for='ist1'>IST1</label><br>";
              echo "<input type='text' name='ist1' id='ist1' value='".$student['ist1']."'>";
              echo "</div>";
              echo "<div class='form-group'><label for='ist2'>IST2</label><br>";
              echo "<input type='text' name='ist2' id='ist2' value='".$student['ist2']."'>";
              echo "</div>";
              echo "<div class='form-group'><label for='ese'>ESE</label><br>";
              echo "<input type='text' name='ese' id='ese' value='".$student['ese']."'>";
              echo "</div>";
              echo "<div class='form-group'><label for='ta'>TA</label><br>";
              echo "<input type='text' name='ta' id='ta' value='".$student['ta']."'>";
              echo "</div>";
              echo "<div class='form-group'><label for='grade'>Grade</label><br>";
              echo "<input type='text' name='grade' id='grade' value='".$student['grade']."'>";
              echo "</div>";
            }
            else{
              echo "<div class='form-group'><label for='grade'>Grade</label><br>";
              echo "<input type='text' name='grade' id='grade' value='".$student['grade']."'>";
              echo "</div>";
            }
            echo "<button type='submit' class='btn btn-default'>Submit</button></form><br><br>";
            $i++;
            echo "</div></div>";
          }
        ?>
      </div>
          
    </div> <!-- /container -->
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../static/js/bootstrap.min.js"></script>
    
    <script language="javascript" type="text/javascript">
      function loginWarn() {
          alert("Please Sign In First");
      }
    </script>
    <script>
      function generateGrade() {
          // var up10 = document.getElementsByName("up10")[0].getAttribute("value");
          // console.log((up10));
          // var up9 = document.getElementsByName("up9")[0].getAttribute("value");
          // var up8 = document.getElementsByName("up8")[0].getAttribute("value");
          // var up7 = document.getElementsByName("up7")[0].getAttribute("value");
          // var up6 = document.getElementsByName("up6")[0].getAttribute("value");
          // var up5 = document.getElementsByName("up5")[0].getAttribute("value");
          // var up4 = document.getElementsByName("up4")[0].getAttribute("value");
          var up10 = document.getElementById("ten").value;
          var up9 = document.getElementById("nine").value;
          var up8 = document.getElementById("eight").value;
          var up7 = document.getElementById("seven").value;
          var up6 = document.getElementById("six").value;
          var up5 = document.getElementById("five").value;
          var up4 = document.getElementById("four").value;
          <?php
            echo "var total_students = ".$i.";";
            echo "var subject = '".trim($subject)."';";
          ?>
          
          var ist1A=[];
          var ist2A=[];
          var taA=[];
          var eseA=[];
          var flag = true;
          for(i=0;i<total_students;i++){
            var ist1 = document.getElementsByName("ist1")[i].getAttribute("value");
            //console.log(ist1);
            ist1A.push(parseInt(ist1));
            var ist2 = document.getElementsByName("ist2")[i].getAttribute("value");
            //console.log(ist2);
            ist2A.push(parseInt(ist2));
            var ese = document.getElementsByName("ese")[i].getAttribute("value");
            //console.log(ese);
            eseA.push(parseInt(ese))
            var ta = document.getElementsByName("ta")[i].getAttribute("value");
            //console.log(ta);
            taA.push(parseInt(ta));
            if(ist1==""||ist2==""||ese==""||ta==""){
              flag = false;
              break;
            }
          }
          // console.log(ist1A);console.log(ist2A);console.log(eseA);console.log(taA);
          if(flag){
            var totalA = [];
            var gradeA = [];
            var idA = [];
            for(i=0;i<total_students;i++){
                var grade = 0;
                var total = 0;
                var id = document.getElementsByName("student_id")[i].getAttribute("value");
                console.log(id);
                var ist = (ist1A[i]+ist2A[i])/2;
                //console.log(ist);
                var eseF = (eseA[i]*60)/100;
                //console.log(eseF);
                var total = parseInt(taA[i]+ist+eseF);
                //console.log(taA[i]);
                
                if(total>=parseInt(up10))
                  grade = 10;
                else if(total>=parseInt(up9))
                  grade = 9;
                else if(total>=parseInt(up8))
                  grade = 8;
                else if(total>=parseInt(up7))
                  grade = 7;
                else if(total>=parseInt(up6))
                  grade = 6;
                else if(total>=parseInt(up5))
                  grade = 5;
                else if(total>=parseInt(up4))
                  grade = 4;
                else 
                  grade = 3;
                totalA.push(total);
                gradeA.push(grade);
                idA.push(id);
            }
            console.log(gradeA);
            method = "post"; // Set method to post by default if not specified.
            var form = document.createElement("form");
            form.setAttribute("method", method);
            form.setAttribute("action", "../php/saveGrades.php");
            var hiddenField2 = document.createElement("input");
            hiddenField2.setAttribute("type", "hidden");
            hiddenField2.setAttribute("name", "subject");
            hiddenField2.setAttribute("value", subject);
            form.appendChild(hiddenField2);
            var hiddenField = document.createElement("input");
            hiddenField.setAttribute("type", "hidden");
            hiddenField.setAttribute("name", "total");
            hiddenField.setAttribute("value", total_students);
            form.appendChild(hiddenField);
            for(i=0;i<total_students;i++){
              var hiddenField = document.createElement("input");
              hiddenField.setAttribute("type", "hidden");
              hiddenField.setAttribute("name", "user_id".concat(i));
              hiddenField.setAttribute("value", idA[i]);
              form.appendChild(hiddenField);
              var hiddenField2 = document.createElement("input");
              hiddenField2.setAttribute("type", "hidden");
              hiddenField2.setAttribute("name", "grade".concat(i));
              hiddenField2.setAttribute("value", gradeA[i]);
              form.appendChild(hiddenField2);
            }
            
            document.body.appendChild(form);
            form.submit();
          }
          else{
            alert("All The Marks Should Be Entered");
          }
          
      }
    </script>
  </body>
</html>

