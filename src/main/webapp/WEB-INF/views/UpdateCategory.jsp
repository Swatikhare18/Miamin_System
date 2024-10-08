<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


 
<div class="container">

    <div class="row">
    
		<div class="col-md-4 col-md-offset-4">
		
    		<div class="panel panel-default">
    		
			  	<div class="panel-heading">
			  	
			    	<h3 class="panel-title"><center><b>Please Update Category</b></center></h3>
			    	
			 	</div>
			 	
			  	<div class="panel-body">
			    	
			    	<form action="<c:url value="/UpdateCategory"/>" method="post"> 
			    	
                    <fieldset>
                    
                   <div class="form-group">
                   
			    		    <center>Category Id</center><input class="form-control" placeholder="Category Id" name="catgId" type="text" value="${category.categoryId}" readonly>
			    		    
			    		</div>
			    		
			    	  	<div class="form-group">
			    	  	
			    		    <center>Category Name</center><input class="form-control" placeholder="Category Name" name="catgName" type="text" value="${category.categoryName}">
			    		    
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center>Category Description</center><input class="form-control" placeholder="Category Description" name="catgDesc" type="text" value="${category.categoryDesc}">
			    			
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Update Category">
			    		
			    	</fieldset>
			    	
			      	</form>
			      	
			    </div>
			    
			</div>
			
		</div>
		
	</div>
	
</div>

