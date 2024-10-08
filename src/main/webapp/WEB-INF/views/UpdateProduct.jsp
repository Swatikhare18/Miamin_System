<%@ page language="java" contentType="text/html"%>

<%@include file="Header.jsp" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<body background="https://www.noupe.com/wp-content/uploads/2009/10/hybrid-genesis.jpg">



<body>


<c:url var="updateProduct" value="/UpdateProduct"/>

<form:form action="${updateProduct}" modelAttribute="product" method="post"> 

         <table align="center" class="table-bordered">
         
         <tr>
               <td><form:label path = "productId">Product Id</form:label></td>
               
               <td><form:input path = "productId" /></td>
               
            </tr>
         
         
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
           
            
              	  
            <tr  >
            
               <td colspan = "2">
               
                  <input type = "submit" value = "Update Product"/>
                  
               </td>
               
            </tr>
            
         </table>  
         
      </form:form>
      
   </body>
