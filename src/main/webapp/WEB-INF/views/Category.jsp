<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">

    <div class="row">
    
		<div class="col-md-4 col-md-offset-4">
		
    		<div class="panel panel-default">
    		
			  	<div class="panel-heading">
			  	
			    	<h3 class="panel-title"><center><b>Please Add Task</b></center></h3>
			    	
			 	</div>
			 	
			  	<div class="panel-body">
			  	
			    	<form action="<c:url value="/AddTask"/>" method="post">
			    	
                    <fieldset>
                    
			    	  	<div class="form-group">
			    	  	
			    		    <center><b>Title</b></center><input class="form-control" placeholder="title" name="tasktitle" type="text">
			    		    
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center><b>Description</b></center><input class="form-control" placeholder="description" name="taskdescription" type="text" value="">
			    			
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center><b>Priority</b></center><input class="form-control" placeholder="priority" name="taskpriority" type="text" value="">
			    			
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center><b>Employee</b></center><input class="form-control" placeholder="employee" name="taskemployee" type="text" value="">
			    			
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center><b>Duedate</b></center><input class="form-control" placeholder="duedate" name="taskduedate" type="text" value="">
			    			
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center><b>Status</b></center><input class="form-control" placeholder="status" name="taskstatus" type="text" value="">
			    			
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Add Task">
			    		
			    	</fieldset>
			    	
			      	</form>
			      	
			    </div>
			    
			</div>
			
		</div>
		
	</div>
	
</div>



<table class="table-bordered">

    <tr>
    
      <td> <center><b>Id &nbsp</b></center></td>
      
      <td><center><b> Title &nbsp</b></center></td>
      
      <td><center> <b> Description &nbsp</b></center></td>
      <td><center> <b> Employee &nbsp</b></center></td>
      <td><center> <b> Priority &nbsp</b></center></td>
      <td><center> <b> Duedate &nbsp</b></center></td>
      <td><center> <b> Status &nbsp</b></center></td>
      
      
      
    </tr>
    
   <c:forEach items = "${listTasks}" var="task" >
   
     <tr>
     
       <td> <center> ${task.id} </center> </td>
       
       <td> <center>  ${task.title}</center> </td>
       
       <td>  <center> ${task.description} </center> </td>
       <td> <center>  ${task.employee}</center> </td>
       <td> <center>  ${task.priority}</center> </td>
       <td> <center>  ${task.duedate}</center> </td>
       <td> <center>  ${task.status}</center> </td>
       
       <td> <a href="<c:url value="/editTask/${task.id}"/>" class="btn btn-success"> <center>EDIT</center> </a> </td>
       
       <td> <a href="<c:url value="/deleteTask/${task.id}"/>" class="btn btn-danger"> <center>DELETE</center> </a> </td>
       
     </tr>
     
   </c:forEach>
   
</table> 

</body> 