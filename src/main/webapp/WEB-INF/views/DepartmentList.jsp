<%@page import="com.project.projectb.beans.Department"%>
<%@page import="java.util.*"%>
<html>

<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.24/css/jquery.dataTables.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script
	src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
	
	<style>
	.required-field::after{
  content: "*";
  color: red;
}
	</style>
	
		<script>
$(document).ready( function() {
    $("#mytable").dataTable({
    "dom": '<"top">rt<"bottom"iflp<"clear">>'
    
    });
});


    function savedept(){
	$("#adddept").attr('disabled', true);
	var deptid = $('#deptid').val();
	var deptname = $('#deptname').val();
	var deptparent = $('#deptparent').val();
	var deptdesc = $('#deptdesc').val();
	 if(deptid=='' || deptname=='')
	 {
	 alert("Please enter some value !!");
	 $("#adddept").attr('disabled', false);
	 return;
	 }
	   $.ajax({  
		 	 type: "POST",   
		     url : "http://localhost:8056/addDepartment",
		     dataType: "json",
		     data:{deptid : deptid, deptname : deptname, deptparent: deptparent, deptdesc : deptdesc},
		     success : function(response) {
		    console.log(response);
		    $("#mytable").dataTable().fnAddData([deptid, deptname, deptparent, deptdesc,
							"<i class='fa fa-edit' data-target='#mymodal' data-toggle='modal' id='updatebtn'></i>",
							"<i class='fa fa-remove'></i>",
							]);
		    $("#adddept").attr('disabled', false);
		    $("#mymodal").modal('hide');
		    	 		    	 
		     },
		     error: function (response){
					alert("Invalid Details, Please fill with valid details !!");
					$("#mymodal").modal('hide');
					$("#adddept").attr('disabled', false);
			 		console.log(response);
		      }
	   });
}

    
    function deletedept(deptid){
    
		 $.ajax({  
		 	 type: "GET", 
		     url : "http://localhost:8056/deleteDept",
		     data : {deptid: deptid},
		     success : function(response) {
		    console.log(response);
		    alert(response);
		    
		     },
		    
		    error: function (response){

		 		console.log(response);
	      }
		    
		     });
		
		
		
	}
	
    

		$("#searchbtn").on("keyup search input paste cut", function() {
   dataTable.search(this.value).draw();
});  


$("#newSearchPlace").html($(".dataTables_filter"));
   
</script>
</head>

<body>
	<div class="container-fluid "
		style="height: 45px; background-color: red">
		<img src="comvivalogo.png" class="float-left"
			style="width: 140px; padding: 2px">

		<div style="float: left">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link" href="/home"
					style="color: white">Home</a></li>

				<li class="nav-item"><a class="nav-link" href="/dept"
					style="color: white">Department</a></li>
			</ul>
		</div>

		<div style="float: right">
			<ul class="nav">
				<li class="nav-item"><a class="nav-link fa fa-user" href="#"
					style="color: white">vivek</a></li>

				<li class="nav-item"><a class="nav-link fa fa-sign-out"
					href="/" style="color: white">Logout</a></li>
			</ul>
		</div>

	</div>


	<div id="responsediv"></div>
	<div class="container">

		<table class="table table-striped table-bordered" id="mytable">

			<thead>
				<div class="row" style="background-color: blue; height: 35px">
					<div class="col-md-4 fa fa-plus">
						<a data-target="#mymodal" data-toggle="modal" style="color: white">Add</a>
					</div>
					<div class="col-md-4" style="color: white">Department</div>
				</div>

				<tr>
					<th>Department Id</th>
					<th>Department Name</th>
					<th>Parent name</th>
					<th>Description</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
				<%
				List<Department> al = (List<Department>) request.getAttribute("getall");
				for (Department e : al) {
				%>

				<tr>
					<td><%=e.getDeptid()%></td>
					<td><%=e.getDeptname()%></td>
					<td><%=e.getDeptparent()%></td>
					<td><%=e.getDeptdesc()%></td>
					<td><i class="fa fa-edit" data-target="#mymodal"
						data-toggle="modal" id="updatebtn" onclick="updatedept('+<%=e.getDeptid() %>+')"></i>
						<i class="fa fa-remove"	onclick="deletedept('<%= e.getDeptid() %>')"></i></td>
				</tr>

				<%
				}
				%>
			</tbody>

		</table>

	</div>


		<div class="modal fade" id="mymodal">
		<form>
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
				
				<div class="modal-header">
				
					<h4>Department</h4>
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					
				</div>
				
				<div class="modal-body">
				
				<div class="form-group row">
					 <label class="col-sm-6 control-label required-field">Department Id</label>
					 <div class="col-sm-6">
					 <input type="text" class="form-control" id="deptid" name="deptid">
					 </div>
				</div>
					
					<div class="form-group row">
					 <label class="col-sm-6 control-label required-field">Department Name</label>
					 <div class="col-sm-6">
					 <input type="text" class="form-control" id="deptname" name="deptname">
					 </div>
					</div>
					
					<div class="form-group row">
					 <label class="col-sm-6 control-label">Department Parent</label>
					 <div class="col-sm-6">
					 <select class="form-control" name="deptparent"
											id="deptparent">
												<option value="DBSS">DBSS</option>
												<option value="MLS">MLS</option>
												<option value="MBS">MBS</option>
												<option value="DFS">DFS</option>
												<option value="GMU">GMU</option>
												<option value="SCM">SCM</option>
												<option value="CVS">CVS</option>
										</select>
					 </div>
					</div>
					
					<div class="form-group row">
					 <label class="col-sm-6 control-label">Department Description</label>
					 <div class="col-sm-6">
					 <input type="text" class="form-control" id="deptdesc" name="deptdesc">
					 </div>
					</div>
				</div>
				
				<div class="modal-footer justify-content-center">
				
				<button type="button" class="btn btn-danger" onclick="savedept()"  id="adddept" >Save Department</button>
							<button type="reset" class="btn">Reset</button>
							<button type="button" class="btn" data-dismiss="modal">Cancel</button>
						
				</div>
				</div>
			</div>
			</form>
		</div>


</body>

</html>