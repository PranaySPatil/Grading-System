<?php
	include 'utility.php';
	$total = (int)$_POST['total'];
	$subject =  $_POST['subject'];
	//echo $total_lecs."<br>".$subject."<br>";
	$sql = "select table_name from subject_list where subject ='".$subject."'";
	// //echo $sql."<br>";
 	$result = $conn->query($sql);
 	$table_name = null;
 	while ($row = $result->fetch_assoc()) {
 		$table_name = $row['table_name'];
 	}
	for($i=0;$i<$total;$i++){
		$student_id = $_POST["user_id".$i];
		$grade = $_POST["grade".$i];
		//  echo $student_id." ".$grade."<br>";
		$sql2 = "update ".$table_name." set grade = '".$grade."' where student_id ='".$student_id."'";
		//echo $sql2."<br>";
    	$result = $conn->query($sql2);		
	}
	// if (!empty($_POST['grade'])){
	// 	// echo $_POST['grade']."<br>";
	// 	$sql = "update ".$table_name." set grade = '".$_POST['grade']."' where student_id ='".$student_id."'";
	// 	echo $sql."<br>";
 //    	$result = $conn->query($sql);
	// }
	$url = $_SERVER['HTTP_REFERER'];  
	// echo $url;
	header("Location:$url");
?>