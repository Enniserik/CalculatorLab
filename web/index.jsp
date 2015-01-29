<%-- 
    Document   : index
    Created on : Jan 28, 2015, 12:41:36 PM
    Author     : eennis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Calculator Lab</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="bootstrap-template.min.css" rel="stylesheet" />
    </head>
    <body>
        
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="<%= request.getContextPath() %>\index.jsp" class="navbar-brand">Home</a>
            </div>
        </nav>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                    <p><a href="lab1/Lab1Form.jsp">Go to Lab 1</a></p>
                    <p><a href="lab2/Lab2Form.jsp">Go to Lab 2</a></p>
                    <p><a href="lab3/Lab3Form.jsp">Go to Lab 3</a></p>
                    
                </div>
            </div>
        </div>
                 
        <script src="jquery-1.10.2.min.js"></script>
        <script src="bootstrap.min.js"></script>
    </body>
</html>
