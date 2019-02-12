<?php
require_once("../../includes/db.php");
require_once("../../includes/functions.php");
session_start();
$employee_id = $_SESSION['employee_id'];
if(isset($_POST['deleteBtn'])){
	$product_id = $_POST['product_id'];
	$tableName = "product";
	$primaryKeyColumnName = "product_id";
	
	deleteRecord($tableName,$primaryKeyColumnName, $product_id, $employee_id);
	
	$tableName = "product_sale_rate";
	deleteRecord($tableName,$primaryKeyColumnName, $product_id, $employee_id);
//	$query = "UPDATE product SET deleted = 1, deleted_at=now(), deleted_by = $employee_id WHERE product_id=$product_id";
//	$query = "UPDATE product_sale_rate SET deleted = 1, deleted_at=now(), deleted_by = $employee_id WHERE product_id=$product_id";
//	
//	mysqli_query($connection, $query);
//	echo "deleted successfully!";
	$url = "http://".BASE_SERVER."/erp/pages/manage-product.php?q=success&status=supplier";
	redirect($url);
}
?>