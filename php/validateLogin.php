<?php header('Content-Type: text/html; charset=utf-8');
include 'utility.php';
session_start();
if (!empty($_POST['user_id']))
{
    $_SESSION['id'] = $_POST['user_id'];
    // header('Location: ../php/studentPage.php');
    $pass = substr(md5($_POST['password']), 0, 30);
    echo $pass;
    echo $_SESSION['id'];
    $sql = "select 1 from login_student where user_id='".$_SESSION['id']."' AND password='".$pass."'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0)
    {
        header('Location: ../student/home2.php');
    }
    else{
        $sql2 = "select 1 from login_teacher where user_id='".$_SESSION['id']."' AND password='".$pass."'";
        $result2 = $conn->query($sql2);
        if ($result2 ->num_rows > 0)
        {
            header('Location: ../teacher/home2.php');
        }
        else
            header('Location: ../index.html?status="WrongPass"');
    }
}


$conn->close();

?>