
function saveDept(){
	alert("In js folder");
	 $('#adddept').attr('disabled',true);
	var deptid = $("#deptid").val();
	var deptname = $("#deptname").val();
	var deptparent = $("#deptparent").val();
	var deptdesc = $("#deptdesc").val();
	
	if($("#deptid").val()==''){
				 toastr.error('Please enter valid Department Id!');
				 $('#adddept').attr('disabled',false);
				 return;
			 }
		
	$.ajax({
		
		type: "POST",
		url : "http://localhost:8056/addDepartment",
		dataType : "json",
		data : {deptid : deptid, deptname : deptname, deptparent : deptparent, deptdesc : deptdesc},
		success : function(response){
			$('#adddept').attr('disabled',true);
			$("#mymodal").modal('hide');
			$("mytable").dataTable().fnAddData([deptid, deptname, deptparent, deptdesc, 
			"<i class='fa fa-edit' data-target='#mymodal' data-toggle='modal' id='updatebtn'></i>",
			"<i class='fa fa-remove' onclick='SomeDeleteRowFunction(this)'></i>"
			]);
			
			var finalResponse = JSON.stringify(response);
			$('#responseDiv').html("<b> Your response is : " + finalResponse + "</b>");
			},
			
		error: function(response){
			console.log(response);
		}
		
	});
}