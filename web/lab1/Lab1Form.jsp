<%-- 
    Document   : Lab1Form
    Created on : Jan 27, 2015, 1:28:21 PM
    Author     : eennis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../bootstrap-template.min.css" rel="stylesheet" />
        <title>Lab 1 Form</title>
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
                    
                    <form id="form1" name="form1" method="POST" action="../calculator">
                        <h3>Length: </h3><input id="length" name="length" type="text" value=""/>
                        <h3>Width: </h3><input id="width" name="width" type="text" value=""/><br><br>
                        <input class="btn" id="submit" name="submit" type="submit" value="Submit"/>
                    </form>
                    
                </div>
            </div>
        </div>
        
        <script src="../jquery-1.10.2.min.js"></script>
        <script src="../bootstrap.min.js"></script>
        
    </body>
</html>
