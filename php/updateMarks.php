<?php
	include 'utility.php';
	$student_id = $_POST['student_id'];
	$table_name = $_POST['table_name'];
	if (!empty($_POST['ist1'])){
		// echo $_POST['ist1']."<br>";
		$sql = "update ".$table_name." set ist1 = '".$_POST['ist1']."' where student_id ='".$student_id."'";
    	$result = $conn->query($sql);
	}
	if (!empty($_POST['ist2'])){
		// echo $_POST['ist2']."<br>";	
		$sql = "update ".$table_name." set ist2 = '".$_POST['ist2']."' where student_id ='".$student_id."'";
    	$result = $conn->query($sql);
	}
	if (!empty($_POST['ese'])){
		// echo $_POST['ese']."<br>";
		$sql = "update ".$table_name." set ese = '".$_POST['ese']."' where student_id ='".$student_id."'";
    	$result = $conn->query($sql);
	}
	if (!empty($_POST['ta'])){
		// echo $_POST['ta']."<br>";
		$sql = "update ".$table_name." set ta = '".$_POST['ta']."' where student_id ='".$student_id."'";
    	$result = $conn->query($sql);
	}
	if (!empty($_POST['grade'])){
		// echo $_POST['grade']."<br>";
		$sql = "update ".$table_name." set grade = '".$_POST['grade']."' where student_id ='".$student_id."'";
		echo $sql."<br>";
    	$result = $conn->query($sql);
	}
	$url = $_SERVER['HTTP_REFERER'];  

	header("Location:$url");
?>