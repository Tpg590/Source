<%-- 
    Document   : login
    Created on : Jul 15, 2025, 9:52:56 PM
    Author     : Le Thien Tri - CE191249
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../include/head.jsp" %>
    <body>
        <%@include file="../include/header.jsp" %>
        <div class=" form-w mx-auto shadow mt-5">   <!--  Can change w there to change width of form --> 
            <div class="d-flex justify-content-center align-content-center">
                <h1 class="mt-2">Login</h1>
            </div>
            <form class="form" method="post" action="${pageContext.request.contextPath}/edit">

                <!-- 1 Input type text -->
                <div class="d-flex mt-3 mb-2 me-3">
                    <label class="text-nowrap mx-auto my-auto" for="username"> Username:</label>
                    <input class="form-control ms-2 w-75" type="text" id="username" name="something"> <!-- have var name something and value something , w: width of input-->
                </div>

                <div class="d-flex mt-2 mb-2 me-3">
                    <label class="text-nowrap mx-auto my-auto" for="password"> Password:</label>
                    <input class="form-control ms-2 w-75" type="password" id="password" name="something2"> <!-- have var name something and value something , w: width of input-->
                </div>

                <!--  Button Save and Cancel -->
                <div class="mb-2 d-flex justify-content-center align-content-center">
                    <button class="btn btn-success mx-auto" type="submit">Login</button>
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
