<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>
 
 <body background="https://www.noupe.com/wp-content/uploads/2009/10/hybrid-genesis.jpg">
 
 <body style="background-color:#f0f1f2;">
 
 <div class="container">
 
    <div class="row">
    
		<div class="col-md-4 col-md-offset-4">
		
    		<div class="panel panel-default">
    		
			  	<div class="panel-heading">
			  	
			    	<h3 class="panel-title" style="color:green"><center><b>USER LOGIN</b></center></h3>
			    	
			 	</div>
			 	
			  	<div class="panel-body">
			  	
			    	<form action="perform_login"  method="post">
			    	
                    <fieldset>
                    
			    	  	<div class="form-group">
			    	  	
			    		    <center><b>Enter UserName</b></center><input class="form-control" placeholder="username" name="username" type="text">
			    		    
			    		</div>
			    		
			    		<div class="form-group">
			    		
			    			<center><b>Enter Password</b></center><input class="form-control" placeholder="password" name="password" type="text" value="">
			    			
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Login">
			    		
			    		
			   <div class="card-footer">
			   
				<div class="d-flex justify-content-center links">
				
					Don't have an account?<a href="<c:url value="/register"/>">Sign Up</a>
					
				</div>
				
			    	</fieldset>
			    	
			      	</form>
			      	
			    </div>
			    
			</div>
			
		</div>
		
	</div>
	
</div>

</body>