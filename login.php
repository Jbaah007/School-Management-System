<?php
		include('dbcon.php');


		if (isset($_POST['username']) && isset($_POST['password'])) {
		
		$username = $_POST['username'];
		$password = $_POST['password'];
		/* student */
		// $query = "SELECT * FROM users WHERE username='$username' AND password='$password' ";
		// $result = mysqli_query($conn,$query)or die(mysqli_error());
		// $num_row = mysqli_num_rows($result);

		$seleUss = mysqli_query($conn, "SELECT * FROM users WHERE username='$username' AND password='$password' ");

		if (mysqli_num_rows($seleUss) ===1 ) {
			
	
		$row = mysqli_fetch_assoc($seleUss);

		$status =$row['status'];

		session_start();
		$_SESSION['id']=$row['user_id'];

		
		if($status=='administrator'){
			echo 'true_admin';	
			mysqli_query($conn,"insert into user_log (username,login_date,user_id)values('$username',NOW(),".$row['user_id'].")")or die(mysqli_error());
		}else if($status=='normal'){
			echo 'true_user';	
			mysqli_query($conn,"insert into user_log (username,login_date,user_id)values('$username',NOW(),".$row['user_id'].")")or die(mysqli_error());
		}else{ 

			
				
		}
	}else{
		
		echo 'false';
	}



	}

		?>