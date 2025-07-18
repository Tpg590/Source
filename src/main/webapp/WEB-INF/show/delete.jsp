<%-- 
    Document   : delete
    Created on : Jul 15, 2025, 9:52:29 PM
    Author     : Le Thien Tri - CE191249
--%>
<%-- 
    Document   : delete
    Created on : Jul 15, 2025, 9:52:29 PM
    Author     : Le Thien Tri - CE191249
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../include/head.jsp" %>
    <body>
        <%@include file="../include/header.jsp" %>

        <div class=" form-w mx-auto shadow mt-5">   <!--  Can change w there to change width of form --> 
            <h1 class="ms-3 mt-2">Delete</h1>
            <form class="form" method="post" action="${pageContext.request.contextPath}/delete">
                <!--  Button Save and Cancel -->
                <div class="mb-2 d-flex justify-content-center align-content-center">
                    <input type="hidden" name="productID" value="${productID}">
                    <p>Do you want to delete this product?</p>
                    <button type="submit" name="view" value="delete" class="btn btn-danger m-1">Delete</button>
                    <a class="btn btn-danger m-1" href="${pageContext.request.contextPath}/home?view=home">Cancel</a>
                </div>
            </form>
        </div>

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->

        <!-- show list -->


        <%@include file="../include/footer.jsp" %>
    </body>
</html>