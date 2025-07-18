<%-- 
    Document   : index
    Created on : Jul 15, 2025, 9:04:59 PM
    Author     : Le Thien Tri - CE191249
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <title>Home</title>
    <%@include file="WEB-INF/include/head.jsp" %>
    <body>
        <%@include file="WEB-INF/include/header.jsp" %>

        <div class="Header container-fluid ms-4">
            <h1>List of Products</h1>
        </div>


        <div class="Create-button">
            <a class="btn btn-primary" href="<c:url value="/home?view=create"/>">Create</a>
        </div>


        <div>
            <table class="table table-bordered w-75 mx-auto">
                <thead class="table-light">
                    <tr>
                        <th class="text-center" style="width:5%;">ID</th>
                        <th class="text-center" style="width:15%;">Product Name</th>
                        <th class="text-center" style="width:10%;">Price</th>
                        <th class="text-center" style="width:10%;">Quantity</th>
                        <th class="text-center" style="width:20%;">Description</th>
                        <th class="text-center" style="width:15%;">Category Name</th>
                        <th class="text-center" style="width:25%;"></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="product" items="${requestScope.productList}">
                        <tr>
                            <td class="text-center">${product.proId}</td>
                            <td class="text-center">${product.proName}</td>
                            <td class="text-center">
                                <fmt:formatNumber value="${product.proPrice}"/>
                            </td>
                            <td class="text-center">${product.proQuantity}</td>
                            <td class="text-center">${product.proDescription}</td>
                            <td class="text-center">${product.category.catName}</td>
                            <td class="text-center">
                                <a class="btn btn-success btn-sm me-1" href="${pageContext.request.contextPath}/home?view=edit&productID=${product.proId}">Edit</a>
                                <a class="btn btn-danger btn-sm" href="${pageContext.request.contextPath}/home?view=delete&productID=${product.proId}">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <table class="table table-bordered w-75 mx-auto">
                <thead class="table-light">
                    <tr>
                        <th class="text-center" style="width:20%;">ID</th>
                        <th class="text-center" style="width:40%;">Name</th>
                        <th class="text-center" style="width:40%;">Gender</th>
                    </tr>
                </thead>
                <tbody>           
                        <tr>
                            <td class="text-center">${loggedUser.userId}</td>
                            <td class="text-center">${loggedUser.name}</td>
                            <td class="text-center">${loggedUser.gender}</td>                         
                        </tr>                
                </tbody>
            </table>

        </div>


        <%@include file="WEB-INF/include/footer.jsp" %>
    </body>
</html>
