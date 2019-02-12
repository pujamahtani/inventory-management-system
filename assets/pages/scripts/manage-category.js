var TableDatatables = function(){
	var handleCategoryTable = function(){
		var categoryTable = $("#category_list");
		
		var oTable = categoryTable.dataTable({
			"processing": true,
			"serverSide": true,
			"ajax":{
				url:
				"http://localhost/erp/pages/scrips/category/manage.php",
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
		categoryTable.on('click','.edit', function (e) {
			$id = $(this).attr('id');
		});
		categoryTable.on('click', '.edit', function (e){
			$id = $(this).attr('id');
			$("#edit_category_id").val($id);
			
			//fetching all the other values from database using ajax and loading them onto their repective edit fields!
			$.ajax({
				url:"http://localhost/erp/pages/scrips/category/fetch.php",
				method:"POST",
				data: {category_id: $id},
				dataType: "json",
				success: function(data){
					$("#category_name").val(data.category_name);
					$("#hsn_code").val(data.hsn_code);
					$("#gst_rate").val(data.gst_rate);
					$("editModal").modal('show');
				},
			});
		});
		categoryTable.on('click','.delete', function (e) {
			$id = $(this).attr('id');
			$("#recordID").val($id);
			});
	}
	return{
		//main function in javascript to handle all THE initialization part
		init: function(){
			handleCategoryTable();
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

            var manage_category_form = $('#manage_category_form');
	        var error = $('.alert-danger', manage_category_form);
            

            manage_category_form.validate({
                errorElement: 'span', //default input error message container
                errorClass: 'help-block help-block-error', // default input error message class
                focusInvalid: false, // do not focus the last invalid input
                ignore: "", // validate all fields including form hidden input
                rules: {
                    category_name: {
                        required: true
                    },
                    hsn_code:{
                        required: true,
                        number: true
                    },
                    gst_rate:{
                        required: true,
                        number: true,
                    },
                },

                messages: { // custom messages for radio buttons and checkboxes
                    category_name:{
                        required: "Please insert category name!"
                    },
                    hsn_code:{
                        required: "Please insert hsn code!",
                        number: "HSN Code should be numeric only!",
                    },
                    gst_rate:{
                        required: "Please insert GST rate!",
                        number: "GST rate should be numeric only!",
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