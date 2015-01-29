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
        <link href="<%= request.getContextPath() %>/bootstrap-template.min.css" rel="stylesheet" />
        <title>Lab 1 Form</title>
    </head>
    <body>
        
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a href="<%= request.getContextPath() %>\index.jsp" class="navbar-brand">Home</a>
            </div>
        </nav>
        
        <%
            Object lengthObj = request.getAttribute("length");
            Object widthObj = request.getAttribute("width");
            Object areaObj = request.getAttribute("area");
            
            String area = "";
            area = areaObj == null ? area : areaObj.toString();
            
            String length = "";
            String width = "";
            
            length = lengthObj == null ? length : lengthObj.toString();
            width = widthObj == null ? width : widthObj.toString();
            
        %>
        
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    
                    <form id="form1" name="form2" method="POST" action="<%= request.getContextPath() %>\calculator2">
                        <h3>Length: </h3><input id="length" name="length" type="text" value="<%= length %>"/>
                        <h3>Width: </h3><input id="width" name="width" type="text" value="<%= width %>"/><br><br>
                        <input class="btn" id="submit" name="submit" type="submit" value="Submit"/>
                    </form>
                        
                    <br>
                    <p><%= area %></p>
                    
                </div> 
            </div>
        </div>
        
        <script src="../jquery-1.10.2.min.js"></script>
        <script src="../bootstrap.min.js"></script>
        
    </body>
</html>
