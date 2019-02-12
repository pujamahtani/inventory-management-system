var TableDatatables = function(){
	var handleCustomerTable = function(){
		var customerTable = $("#customer_list");
		
		var oTable = customerTable.dataTable({
			"processing": true,
			"serverSide": true,
			"ajax":{
				url:
				"http://localhost/erp/pages/scrips/customer/manage.php",
				type:"POST",
			},
			"lengthMenu": [
				[5,15,20,-1],
				[5,15,25,"All"]
			],
			"pagelength": 15, //set the default length
			"order":[
				[0,"desc"]
			],
			"columnDefs":[{
				'orderable': false,
				'targets':[-1,-2]
			}]
		});
		customerTable.on('click','.edit', function (e) {
			$id = $(this).attr('id');
		});
		customerTable.on('click', '.edit', function (e){
			$id = $(this).attr('id');
			$("#edit_customer_id").val($id);
			
			//fetching all the other values from database using ajax and loading them onto their repective edit fields!
			$.ajax({
				url:"http://localhost/erp/pages/scrips/customer/fetch.php",
				method:"POST",
				data: {customer_id: $id},
				dataType: "json",
				success: function(data){
					$("#customer_name").val(data.customer_name);
					$("#customer_address").val(data.customer_address);
					$("#customer_email").val(data.customer_email);
					$("#customer_contact").val(data.customer_contact);
					$("#gst_no").val(data.gst_no);
					$("editModal").modal('show');
				},
			});
		});
		customerTable.on('click','.delete', function (e) {
			$id = $(this).attr('id');
			$("#recordID").val($id);
			});
	}
	return{
		//main function in javascript to handle all THE initialization part
		init: function(){
			handleCustomerTable();
		}
	};
}();
jQuery(document).ready(function(){
	TableDatatables.init();
});


//VALIDATION
var FormValidation = function () {
var handleValidation3 = function() {
        // for more info visit the official plugin documentation: 
        // http://docs.jquery.com/Plugins/Validation

            var manage_customer_form = $('#manage_customer_form');
	        var error = $('.alert-danger', manage_customer_form);
            

            manage_customer_form.validate({
                errorElement: 'span', //default input error message container
                errorClass: 'help-block help-block-error', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                ignore: "", // validate all fields including form hidden input
                rules: {
                   customer_name: {
                        required: true
                    },
                    customer_address:{
                        required: false,
                    },
                    customer_email:{
                        required: true,
                        email: true,
                    },
					customer_contact:{
                        required: false,
                        number: true,
                    },
					gst_no:{
                        required: true,
                        number: true,
                    },
                },

                messages: { // custom messages for radio buttons and checkboxes
                    customer_name:{
                        required: "Please insert customer name!"
                    },
                    customer_email:{
                        required: "Please insert email id!",
                        email: "Enter proper Email id!",
                    },
                    gst_no:{
                        required: "Please insert GST number!",
                        number: "GST number should be numeric only!",
                    },
					customer_contact:{
                        number: "Contact should be numeric only!",
                    },
                },

                

               invalidHandler: function (event, validator) { //display error alert on form submit   
                    error.show();
                    App.scrollTo(error, -200);
                },

                highlight: function (element) { // hightlight error inputs
                   $(element)
                        .closest('.form-group').addClass('has-error'); // set error class to the control group
                },

                unhighlight: function (element) { // revert the change done by hightlight
                    $(element)
                        .closest('.form-group').removeClass('has-error'); // set error class to the control group
                },

                success: function (label) {
                    label
                        .closest('.form-group').removeClass('has-error'); // set success class to the control group
                },

                submitHandler: function (form) {
                    error.hide();
                    form[0].submit(); // submit the form
                }

            });

            
    }
    return {
        //main function to initiate the module
        init: function () {
            handleValidation3();

        }

    };

}();
jQuery(document).ready(function() {
    FormValidation.init();
});