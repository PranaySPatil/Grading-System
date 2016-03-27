<?php
	include 'utility.php';
	$total = (int)$_POST['total_forms'];
	$total_lecs = $_POST['total'];
	$subject = $_POST['subject'];
	//echo $total_lecs."<br>".$subject."<br>";
	$sql = "update teaches set total_lecs = '".$total_lecs."' where subject ='".$subject."'";
	//echo $sql."<br>";
    $result = $conn->query($sql);

	for($i=0;$i<$total;$i++){
		$student_id = $_POST["student_id".$i];
		$attended = $_POST["attended".$i];
		$sql2 = "update student_attended set attended = '".$attended."' where student_id ='".$student_id."' and 
				subject='".$subject."'";
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