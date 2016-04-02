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
            <li><a href="home2.php">Home</a></li>
            <li ><a href="grades.php">Grades</a></li>
            <li ><a href="attendance.php">Attendace</a></li>
            <li ><a href="contact.html">Contact</a></li>
            <li class="active"><a href="news.php">News</a></li>
            
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="../index.html?status=logout">LogOut</a></li>
            
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>

    <div class="container">

      <div class="jumbotron"  style="text-align:center" >
        <h2>News</h2>
       </div>
          

    </div>  <!-- /container -->
        <!-- <button class="btn-primary" data-toggle="collapse" data-target="#new" style="width:1024px">New</button> -->
        <?php
          include '../php/utility.php';
          session_start();
          $student_id = $_SESSION["id"];
          $sem = NULL;
          $branch = NULL;
          $sq = "select branch, sem from login_student where user_id='".$student_id."';";
          $r = $conn->query($sq);
          while ($row = $r->fetch_assoc()){
            $sem = $row["sem"];
            $branch = $row["branch"];
          }
          
          $sql = "select * from uploads order by date desc;";
          $result = $conn->query($sql);
          while ($row = $result->fetch_assoc()){
              // echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
              $type = $row["type"];
              $title = $row["title"];
              $file = $row["name"];
              $uploader = $row["uploader_id"];
              $date = $row["date"];
              $up_sem = $row["sem"];
              $up_branch = $row["branch"];
              // echo $title."<br>".$up_sem."<br>".$up_branch."<br>";
              $sql2 = "select name from login_student where user_id='".$uploader."';";
              if(strncmp($uploader, "teacher", 7)==0)
                $sql2 = "select name from login_teacher where user_id='".$uploader."';";
              $result2 = $conn->query($sql2);
              while ($row2 = $result2->fetch_assoc()){
                // echo $row2["name"]."---<br>";
                $uploader = $row2["name"];    
              } 

              if((strcmp($sem, $up_sem)==0 || strcmp(NULL, $up_sem)==0) && (strcmp($branch, $up_branch)==0 || strcmp("All", $up_branch)==0)){
                echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
                echo "<h3>".$title."</h3>";
                echo "<h4>".$uploader."</h4>";
                echo $date."<br>";
                if(strcmp($type, "doc")==0 || strcmp($type, "docx")==0)
                  {
                    
                    echo "<center><div class='item'><a href='../uploads/".$file."'><img src='../icons/doc.png' alt='".$file."' style='max-width:300px'/></a></div><center><br>";
                    echo "</div></div>";
                  }
                else if(strcmp($type, "pdf")==0){
                  // echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
                  echo "<center><div class='item'><a href='../uploads/".$file."'><img src='../icons/pdf.png' alt='".$file."' /></a></div><center><br>";
                  echo "</div></div>";
                }
                else if(strcmp($type, "ppt")==0){
                  // echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
                  echo "<center><div class='item'><a href='../uploads/".$file."'><img src='../icons/ppt.png' alt='".$file."' style='max-width:300px'/></a></div><center><br>";
                  echo "</div></div>";
                }
                else{
                  // echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
                  echo "<center><div class='item'><a href='../uploads/".$file."'><img src='../uploads/".$file."' alt='".$file."' /></a></div><center><br>";  
                  echo "</div></div>";
                }
                }
                // echo "</div></div>";
                
             }
        ?> 

     <!--  </div>
    </div> -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>-->
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="static/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript">
      function loginWarn() {
          alert("Please Sign In First");
      }
    </script>
  </body>
</html>
