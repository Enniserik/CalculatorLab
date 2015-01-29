<%-- 
    Document   : Lab1Page
    Created on : Jan 27, 2015, 1:40:39 PM
    Author     : eennis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-template.min.css" rel="stylesheet" />
        <title>Lab 1 Page</title>
    </head>
    <body>
        
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="<%= request.getContextPath() %>\index.jsp" class="navbar-brand">Home</a>
            </div>
        </nav>
            
        <%
            Object obj = request.getAttribute("result");
            String area = "Invalid Input";
            area = obj == null ? area : obj.toString();
        %>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                    <h1><%= area %></h1>
                    
                </div>
            </div>
        </div>
        
        <script src="jquery-1.10.2.min.js"></script>
        <script src="bootstrap.min.js"></script>
    </body>
</html>
