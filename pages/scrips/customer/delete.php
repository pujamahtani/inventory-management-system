<?php
require_once("../../includes/db.php");
require_once("../../includes/functions.php");
session_start();
$employee_id = $_SESSION['employee_id'];
if(isset($_POST['deleteBtn'])){
	$customer_id = $_POST['customer_id'];
	$query = "UPDATE customer SET deleted = 1, deleted_at=now(), deleted_by = $employee_id WHERE customer_id=$customer_id";
	
	mysqli_query($connection, $query);
//	echo "deleted successfully!";
	$url = "http://".BASE_SERVER."/erp/pages/manage-customer.php?q=success&status=customer";
	redirect($url);
}
?>