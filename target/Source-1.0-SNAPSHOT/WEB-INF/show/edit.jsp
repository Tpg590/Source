<%-- 
    Document   : edit
    Created on : Jul 15, 2025, 9:52:34 PM
    Author     : Le Thien Tri - CE191249
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../include/head.jsp" %>
    <body>
        <%@include file="../include/header.jsp" %>     

        <div class=" form-w mx-auto shadow mt-5">   <!--  Can change w there to change width of form --> 
            <h1 class="ms-3 mt-2">Edit</h1>
            <form class="form" method="post" action="${pageContext.request.contextPath}/edit">
                <!-- 1 Input type text -->
                <div class="row ms-2 mb-3 me-2">
                    <label class="col-3 col-form-label text-nowrap" for="something">Product Name:</label>
                    <div class="col-9">
                        <input class="form-control" type="text" id="something" name="prodName" value="${product.proName}">
                    </div>
                </div>

                <div class="row ms-2 mb-3 me-2">
                    <label class="col-3 col-form-label text-nowrap" for="something2">Price:</label>
                    <div class="col-9">
                        <input class="form-control" type="number" id="something2" name="price" min="0" value="${product.proPrice}">
                    </div>
                </div>

                <div class="row ms-2 mb-3 me-2">
                    <label class="col-3 col-form-label text-nowrap" for="something3">Quantity:</label>
                    <div class="col-9">
                        <input class="form-control" type="number" id="something3" name="quantity" min="0" value="${product.proQuantity}">
                    </div>
                </div>

                <div class="row ms-2 mb-3 me-2">
                    <label class="col-3 col-form-label text-nowrap" for="something4">Description:</label>
                    <div class="col-9">
                        <input class="form-control" type="text" id="something4" name="description" value="${product.proDescription}">
                    </div>
                </div>

                <div class="row ms-2 mb-3 me-2">
                    <label class="col-3 col-form-label text-nowrap" for="something5">Category Name:</label>
                    <div class="col-9">
                        <input class="form-control" type="text" id="something5" name="cateName" value="${product.category.catName}">
                    </div>
                </div>

                <!--  Button Save and Cancel -->
                <div class="mb-2 d-flex justify-content-center align-content-center">
                    <input type="hidden" name="prodId" value="${product.proId}">
                    <button class="btn btn-primary m-1" name="" type="submit">Save</button>
                    <a class="btn btn-danger m-1" href="${pageContext.request.contextPath}/home?view=home">Cancel</a>
                </div>
            </form>
        </div>
        <!-- show list -->

        <!-- test -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->


        <%@include file="../include/footer.jsp" %>
    </body>
</html>
