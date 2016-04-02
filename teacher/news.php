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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
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
            <li><a href="home2.php">Home</a></li>
            <!-- <li ><a href="grades.php">Grades</a></li> -->
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

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron"  style="text-align:center" >
        <h2>News</h2>
        </div>
      </div>
        <!-- <button class="btn-primary" data-toggle="collapse" data-target="#new" style="width:1024px">New</button> -->
        <div class="container">

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron"  style="text-align:center" >
          <div id="new" >
          <form action="../php/upload.php" method="post" enctype="multipart/form-data">
            <div class='form-group'><label for='file'>Upload a File</label>
            <center><input type="file" name="fileToUpload" id="fileToUpload"></center>
            </div>
            <div class='form-group'><label for='title'>Title</label>
            <input type="text" name="title" id="title" required>
            </div>
            <div class='form-group'><label for='branch'>For Branch</label>
            <input list="branches" name="branch" required>
              <datalist id="branches">
                <option value="All">
                <option value="Computer">
                <option value="IT">
                <option value="Electronix">
                <option value="Electrical">
                <option value="Civil">
                <option value="Mechanical">  
              </datalist>
            </div>
            <div class='form-group'><label for='sem'>For Sem   </label>
            <input list="sems" name="sem" required>
              <datalist id="sems">
                  <option value="All">
                  <option value="1">
                  <option value="2">
                  <option value="3">
                  <option value="4">
                  <option value="5">
                  <option value="6">
                  <option value="7">
                  <option value="8">  
                </datalist>
            </div>
            <input type="submit" value="Upload Image" name="submit">
          </form>
        </div>
        </div>
      </div>

        <?php
          include '../php/utility.php';
          $sql = "select * from uploads order by date desc;";
          $result = $conn->query($sql);
          while ($row = $result->fetch_assoc()){
              $type = $row["type"];
              $title = $row["title"];
              $file = $row["name"];
              $uploader = $row["uploader_id"];
              $date = $row["date"];
              $sql2 = "select name from login_student where user_id='".$uploader."';";
              if(strncmp($uploader, "teacher", 7)==0)
                $sql2 = "select name from login_teacher where user_id='".$uploader."';";
              $result2 = $conn->query($sql2);
              while ($row2 = $result2->fetch_assoc()){
                // echo $row2["name"]."---<br>";
                $uploader = $row2["name"];    
              } 
              echo "<div class='container'><div class='jumbotron'  style='text-align:center' >";
              echo "<h3>".$title."</h3>";
              echo "<h4>".$uploader."</h4>";
              echo $date."<br>";
              if(strcmp($type, "doc")==0 || strcmp($type, "docx")==0)
                echo "<center><div class='item'><a target='_blank' href='../uploads/".$file."'><img src='../icons/doc.png' alt='".$file."' style='max-width:300px'/></a></div><center><br>";
              else if(strcmp($type, "pdf")==0)
                echo "<center><div class='item'><a target='_blank' href='../uploads/".$file."'><img src='../icons/pdf.png' alt='".$file."' /></a></div><center><br>";
              else if(strcmp($type, "ppt")==0)
                echo "<center><div class='item'><a target='_blank' href='../uploads/".$file."'><img src='../icons/ppt.png' alt='".$file."' style='max-width:300px'/></a></div><center><br>";
              else
                echo "<center><div class='item'><a target='_blank' href='../uploads/".$file."'><img src='../uploads/".$file."' alt='".$file."' /></a></div><center><br>";
              echo "</div></div>";
          }
        ?> 

      </div>
          

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="static/js/bootstrap.min.js"></script>
    <script language="javascript" type="text/javascript">
      function loginWarn() {
          alert("Please Sign In First");
      }
    </script>
  </body>
</html>
