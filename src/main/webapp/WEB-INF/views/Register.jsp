<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>


 
 <body background="https://www.noupe.com/wp-content/uploads/2009/10/hybrid-genesis.jpg">
 
 
 <div class="container">
 
    <div class="row">
    
		<div class="col-md-4 col-md-offset-4">
		
    		<div class="panel panel-default">
    		
			  	<div class="panel-heading">
			  	
			    	<h3 class="panel-title"  style="color:green"><center><b>REGISTER HERE</b></center></h3>
			    	
			 	</div>
			 	
			  	<div class="panel-body">

                   <form action="register"  method="post">
                   
                   
                         <div class="form-group">
                           <label>UserName</label> <input type="text"
                                required= "required" class="form-control"
                                id="exampleInputEmail1"  aria-describedby="emailHelp" name="username" placeholder="Enter your UserName">     
                          </div>
                         
                            
                            <div class="form-group">
                           <label> Email</label> <input type="email"
                                required= "required" class="form-control"
                                id="exampleInputEmail1"  aria-describedby="emailHelp" name="email" placeholder="Enter your Email">
                            </div>
                            
                            
                            <div class="form-group">
                           <label> Address</label> <input type="text"
                                required= "required" class="form-control"
                                id="exampleInputEmail1"  aria-describedby="emailHelp" name="userAddress" placeholder="Enter your Address">     
                          </div>
                            
                            
                            <div class="form-group">
                                  <label for=" exampleInputPassword1"> Password</label> <input 
                                required= "required" type="password" class="form-control"
                                id="exampleInputPassword1"   name="password"  placeholder="Enter your Password">
                                 
                            </div>
                             
                            </div>
                                    
                                    <div class="form group col-md-4">
                                    <label>Join As</label> <select name="role"
                                    class="custom-select" id="inlineFormCustomSelectpref">
                                    
                                       <option selected>Choose---</option>
                                       <option value="ROLE_ADMIN">ROLE_ADMIN</option>
                                       <option value="ROLE_CUSTOMER">ROLE_CUSTOMER</option>
                                       
                                        </select>
                                     </div>
                                    
                                   
                            <button type="submit"
                                class="btn btn-lg btn-success btn-block">Register</button>
                               
                   </form>
                     	
			    </div>
			</div>
		</div>
	</div>
</div>
                       
</body>