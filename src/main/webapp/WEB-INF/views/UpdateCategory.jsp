<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


 
<div class="container">

    <div class="row">
    
		<div class="col-md-4 col-md-offset-4">
		
    		<div class="panel panel-default">
    		
			  	<div class="panel-heading">
			  	
			    	<h3 class="panel-title"><center><b>Please Update Task</b></center></h3>
			    	
			 	</div>
			 	
			  	<div class="panel-body">
			    	
			    	<form action="<c:url value="/UpdateTask"/>" method="post"> 
			    	
                    <fieldset>
                    
                   <div class="form-group">
                   
			    		    <center>Id</center><input class="form-control" placeholder="id" name="taskid" type="text" value="${task.id}" readonly>
			    		    
			    		</div>
			    		
			    	  	<div class="form-group">
			    	  	
			    		    <center>Title</center><input class="form-control" placeholder="title" name="tasktitle" type="text" value="${task.title}">
			    		    
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center> Description</center><input class="form-control" placeholder="description" name="taskdescription" type="text" value="${task.description}">
			    			
			    		</div>
			    		
			    		
			    		
			    		<div class="form-group">
			    		
			    			<center> Priority</center><input class="form-control" placeholder="priority" name="taskpriority" type="text" value="${task.priority}">
			    			
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center> Employee</center><input class="form-control" placeholder="employee" name="taskemployee" type="text" value="${task.employee}">
			    			
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center> Duedate</center><input class="form-control" placeholder="duedate" name="taskduedate" type="text" value="${task.duedate}">
			    			
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center> Status</center><input class="form-control" placeholder="status" name="taskstatus" type="text" value="${task.status}">
			    			
			    		</div>
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Update Task">
			    		
			    	</fieldset>
			    	
			      	</form>
			      	
			    </div>
			    
			</div>
			
		</div>
		
	</div>
	
</div>

