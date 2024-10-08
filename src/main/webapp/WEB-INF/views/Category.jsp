<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">

    <div class="row">
    
		<div class="col-md-4 col-md-offset-4">
		
    		<div class="panel panel-default">
    		
			  	<div class="panel-heading">
			  	
			    	<h3 class="panel-title"><center><b>Please Add Category</b></center></h3>
			    	
			 	</div>
			 	
			  	<div class="panel-body">
			  	
			    	<form action="<c:url value="/AddCategory"/>" method="post">
			    	
                    <fieldset>
                    
			    	  	<div class="form-group">
			    	  	
			    		    <center><b>Category Name</b></center><input class="form-control" placeholder="Category Name" name="catgName" type="text">
			    		    
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center><b>Category Description</b></center><input class="form-control" placeholder="Category Description" name="catgDesc" type="text" value="">
			    			
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Add Category">
			    		
			    	</fieldset>
			    	
			      	</form>
			      	
			    </div>
			    
			</div>
			
		</div>
		
	</div>
	
</div>



<table class="table-bordered">

    <tr>
    
      <td> <center><b>Category Id &nbsp</b></center></td>
      
      <td><center><b> Category Name &nbsp</b></center></td>
      
      <td><center> <b>Category Description &nbsp</b></center></td>
      
      <td><center> <b>Perform Edit </b></center> </td>
      
      <td><center> <b>Perform Delete </b></center> </td>
      
    </tr>
    
   <c:forEach items = "${listCategories}" var="category" >
   
     <tr>
     
       <td> <center> ${category.categoryId} </center> </td>
       
       <td> <center>  ${category.categoryName}</center> </td>
       
       <td>  <center> ${category.categoryDesc} </center> </td>
       
       <td> <a href="<c:url value="/editCategory/${category.categoryId}"/>" class="btn btn-success"> <center>EDIT</center> </a> </td>
       
       <td> <a href="<c:url value="/deleteCategory/${category.categoryId}"/>" class="btn btn-danger"> <center>DELETE</center> </a> </td>
       
     </tr>
     
   </c:forEach>
   
</table> 

</body> 