<?php
    include 'utility.php';
    session_start();
    $user_id = $_SESSION['id'];
    $sem = $_POST["sem"];
    $branch = $_POST["branch"];
    $title = $_POST["title"];
    $target_dir = "../uploads/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = pathinfo($target_file,PATHINFO_EXTENSION);
    $file_name = $_FILES["fileToUpload"]["name"];
    $type = $imageFileType;
    // echo $sem;
    // echo $branch;
    // echo $_FILES["fileToUpload"]["name"];
    // echo $imageFileType;
    // echo $user_id;
    // Check if image file is a actual image or fake image
    // if(isset($_POST["submit"])) {
    //     $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    //     if($check !== false) {
    //         echo "File is an image - " . $check["mime"] . ".";
    //         $uploadOk = 1;
    //     } else {
    //         echo "File is not an image.";
    //         $uploadOk = 0;
    //     }
    // }

    // Check if file already exists
    if (file_exists($target_file)) {
        echo "Sorry, file already exists.";
        $uploadOk = 0;
    }
    // Check file size
    if ($_FILES["fileToUpload"]["size"] > 500000000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }
    // Allow certain file formats
    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
    && $imageFileType != "gif" && $imageFileType != "doc" && $imageFileType != "pdf" && $imageFileType != "docx" && $imageFileType != "ppt" ) {
        echo "Sorry, only JPG, JPEG, PNG, GIF, DOC, PPT & PDF files are allowed.";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
    // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
            $sql = "INSERT INTO uploads (`branch`, `sem`, `date`, `name`, `type`, `uploader_id`, `title`) VALUES ('".$branch."', '".$sem."', '".date("Y-m-d")."', '".$file_name."', '".$type."',
                 '".$user_id."', '".$title."'); ";
            if(strcmp($sem, "All")==0)
                $sql = "INSERT INTO uploads (`branch`, `date`, `name`, `type`, `uploader_id`, `title`) VALUES ('".$branch."', '".date("Y-m-d")."', '".$file_name."', '".$type."',
                     '".$user_id."', '".$title."'); ";
            $result = $conn->query($sql);
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }
    $url = $_SERVER['HTTP_REFERER'];  
    // echo $url;
    header("Location:$url");
?> 