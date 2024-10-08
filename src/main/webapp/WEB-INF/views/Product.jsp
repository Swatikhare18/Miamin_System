<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<body background="https://www.noupe.com/wp-content/uploads/2009/10/hybrid-genesis.jpg">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<br> <br>

<body>

<form:form action="InsertProduct" modelAttribute="product" method="post" enctype="multipart/form-data">

         <table align="center" class="table-bordered">
         
            <tr>
            
               <td><form:label path = "productName">Product Name</form:label></td>
               
               <td><form:input path = "productName" /></td>
               
            </tr>
            
            <tr>
            
               <td><form:label path = "price">Price</form:label></td>
               
               <td><form:input path = "price" /></td>
               
            </tr>  
            
            <tr>
            
               <td><form:label path = "stock">Stock</form:label></td>
               
               <td><form:input path = "stock" rows = "5" cols = "30" /></td>
               
            </tr>  
            
            
             <tr>
             
    <td> <b>Category</b> </td>
    
    <td> 
        <form:select path="categoryId">
        
           <form:option value="0" label="--Select List--" />
           
           <form:options items="${categoryList}" />
           
        </form:select>
    
    </td>
    
  </tr>
            <tr>
            
               <td><form:label path = "supplierId">Supplier</form:label></td>
               
               <td><form:input path = "supplierId" /></td>
               
            </tr> 
            
            <tr>
            
               <td><form:label path = "productDesc">Product Description</form:label></td>
               
               <td><form:input path = "productDesc" /></td>
               
            </tr>
            
            <tr>
            
               <td><form:label path = "pimage">Product Image</form:label></td>
               
               <td><form:input type="file" path = "pimage" /></td>
               
            </tr>
            
              	  
            <tr>
            
               <td colspan = "2">
               
                  <center><input class="btn btn-lg btn-success btn-block" type = "submit" value = "Add Product"/></center>
                  
               </td>
               
            </tr>
            
         </table>  
         
      </form:form>


<table class="table-bordered">

    <tr>
    
      <td> Product Id &nbsp</td>
      
      <td> Product Name &nbsp</td>
      
      <td> Price &nbsp</td>
      
      <td> Stock &nbsp</td>
      
      <td> Supplier &nbsp</td>
      
      <td> Operations </td>
      
    </tr>
    
   <c:forEach items = "${productList}" var="product" >
   
     <tr>
     
       <td> <center> ${product.productId}  </center> </td>
       
       <td> <center>  ${product.productName} </center> </td>
       
       <td>  <center> ${product.price} </center> </td>
       
       <td>  <center> ${product.stock} </center> </td>
       
       <td>  <center> ${product.supplierId} </center> </td>
       
       <td> <a href="<c:url value="/editProduct/${product.productId}"/>" class="btn btn-success"> EDIT </a> </td>
       
       <td> <a href="<c:url value="/deleteProduct/${product.productId}"/>" class="btn btn-danger"> DELETE </a> </td>
     </tr>
     
   </c:forEach>
   
</table> 

</body>


