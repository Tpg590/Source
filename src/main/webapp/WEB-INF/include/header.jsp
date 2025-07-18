<%-- 
    Document   : header
    Created on : Jun 16, 2025, 1:13:17 PM
    Author     : Le Thien Tri - CE191249
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<header>

    <!-- Fixed navbar -->
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <!-- Button when responsive lower than 800px -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>



            <div class="collapse navbar-collapse" id="navbarCollapse">



                <!-- Start, home, icon div -->
                <div>
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="text-light my-auto ms-5">
                            <a href="<c:url value="home"/>">Home</a>
                        </li>
                    </ul>
                </div>


                <!-- If have 3 big div this will be a between div else if 2 it will be end div-->
                <div class="ms-auto">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">
                        <li class="text-light my-auto">
                            <a href="<c:url value="home"/>">Home</a>
                        </li>
                    </ul>
                </div>


                <!-- end div -->
                <div class="ms-auto">
                    <ul class="navbar-nav me-auto mb-2 mb-md-0">

                        <li class="text-light my-auto me-5">
                            <a href="<c:url value="/home"/>">Home</a>
                        </li>    

                        <!-- Login/Logout button -->
                         <a href="${pageContext.request.contextPath}/home?view=login" class="btn border-1 border-light text-light mx-1 h-50 my-auto">Login</a> <!-- <a href="#" class="btn btn-success mx-1 h-50 my-auto">Login</a> -->
                        <a href="${pageContext.request.contextPath}/home?view=logout" class="btn border-1 border-light text-light mx-1 h-50 my-auto">Logout</a> <!-- <a href="#" class="btn btn-danger mx-1 h-50 my-auto">Logout</a> -->
                    </ul>
                </div>



            </div>
        </div>
    </nav>
</header>
