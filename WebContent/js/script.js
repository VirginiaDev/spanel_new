var DECIMAL_SEPARATOR = ".";
var expanded = false;

function showBasicMessage(messageContent) {
	swal({
		title : "Alert!",
		text : messageContent,
		customClass : 'swal',
		animation : false,
		confirmButtonColor : '#2f71e3',
		confirmButtonText : "OK" ,
		allowOutsideClick: false,
		allowEscapeKey: false,
		allowEnterKey: false,
		showConfirmButton: true,
		showCancelButton: false
	});
}

function showFailedMessage(messageContent) {
	swal({
		title : "Alert!",
		text : messageContent,
		customClass : 'swal',
		animation : false,
		confirmButtonColor : '#2f71e3',
		confirmButtonText : "OK" ,
		allowOutsideClick: false,
		allowEscapeKey: false,
		allowEnterKey: false,
		showConfirmButton: true,
		showCancelButton: false
	},
	function(isConfirm){
		if (isConfirm) {
			parent.frames["addEditFrame"].hideLoader();
		}
	});
}
