<?php
	include 'utility.php';
	//echo $_SESSION['id'];
	// session_start();
	// $_SESSION['id'] = '131070007';
    $sql = "select * from student_spi where student_id='".$_SESSION['id']."'";
    $result = $conn->query($sql);
    $spi_list = array();
    $curr_cpi = null;
    while ($row = $result->fetch_assoc()) {
	    if($row['spi1'] != null)
	    	$spi_list['sem1'] = $row['spi1'];
	    if($row['spi2'] != null)
	    	$spi_list['sem2'] = $row['spi2'];
	    if($row['spi3'] != null)
	    	$spi_list['sem3'] = $row['spi3'];
	    if($row['spi4'] != null)
	    	$spi_list['sem4'] = $row['spi4'];
	    if($row['spi5'] != null)
	    	$spi_list['sem5'] = $row['spi5'];
	    if($row['spi6'] != null)
	    	$spi_list['sem6'] = $row['spi6'];
	    if($row['spi7'] != null)
	    	$spi_list['sem7'] = $row['spi7'];
	    if($row['spi8'] != null)
	    	$spi_list['sem8'] = $row['spi8'];
	    if($row['curr_cpi'] != null)
	    	$curr_cpi = $row['curr_cpi'];
	}
	//var_dump($spi_list);
	$key = '';
	$keys2 = array();
	$keys = array();
	$keys2 = array_keys($spi_list);
	//echo $keys[0]."<br>";
	$values = array();
	foreach($keys2 as $key){
		$values[] = (float)$spi_list[$key];
		$keys[] = (int)$key;
	}
	$sql2 = "select name from login_student where user_id='".$_SESSION['id']."'";
    $result2 = $conn->query($sql2);
    $name = null;
    while ($row = $result2->fetch_assoc()){
    	$name = $row['name'];
    }
	// for($i = 0;$i < sizeof($keys2)-1;$i++)
 //              echo"[".$keys2[$i].",".$spi_list[$keys2[$i]]."],";
 //    echo"[".$keys2[sizeof($keys2)-1].",".$spi_list[$keys2[sizeof($keys2)-1]]."]";
?>