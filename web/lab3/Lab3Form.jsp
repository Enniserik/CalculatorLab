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
            Object heightObj = request.getAttribute("height");
            Object baseObj = request.getAttribute("base");
            Object radiusObj = request.getAttribute("radius");
            
            
            Object rectAreaObj = request.getAttribute("rectArea");
            Object circAreaObj = request.getAttribute("circArea");
            Object triAreaObj = request.getAttribute("triArea");
            
            String rectArea = "";
            String circArea = "";
            String triArea = "";
            
            rectArea = rectAreaObj == null ? rectArea : rectAreaObj.toString();
            circArea = circAreaObj == null ? circArea : circAreaObj.toString();
            triArea = triAreaObj == null ? triArea : triAreaObj.toString();
            
            String length = "0";
            String width = "0";
            String base = "0";
            String height = "0";
            String radius = "0";
            
            length = lengthObj == null ? length : lengthObj.toString();
            width = widthObj == null ? width : widthObj.toString();
            base = baseObj == null ? base : baseObj.toString();
            height = heightObj == null ? height : heightObj.toString();
            radius = radiusObj == null ? radius : radiusObj.toString();
            
        %>
        
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    
                    <h3>Area of Rectangle</h3>
                    <form id="form1" name="form1" method="POST" action="<%= request.getContextPath() %>\calculator3?type=rect">
                        <h3>Length: </h3><input id="length" name="length" type="text" value="<%= length %>"/>
                        <h3>Width: </h3><input id="width" name="width" type="text" value="<%= width %>"/><br><br>
                    </form>
                    
                </div>
                    
                <div class="col-md-4">
                    
                    <h3>Area of Circle</h3>
                    <form id="form2" name="form2" method="POST" action="<%= request.getContextPath() %>\calculator3?type=circ">
                        <h3>Radius: </h3><input id="radius" name="radius" type="text" value="<%= radius %>"/><br><br>
                    </form>
                    
                </div>
                    
                <div class="col-md-4">
                    
                    <h3>Area of Triangle</h3>
                    <form id="form3" name="form3" method="POST" action="<%= request.getContextPath() %>\calculator3?type=tri">
                        <h3>Height: </h3><input id="height" name="height" type="text" value="<%= height %>"/>
                        <h3>Base: </h3><input id="base" name="base" type="text" value="<%= base %>"/><br><br>
                    </form>

                </div>
            </div>
                    
            <div class="row">
                <div class="col-md-4">
                    <h4>Area: <%= rectArea %></h4>
                </div>
                <div class="col-md-4">
                    <h4>Area: <%= circArea %></h4>
                </div>
                <div class="col-md-4">
                    <h4>Area: <%= triArea %></h4>
                </div>
            </div>        
                    
            <div class="row">
                <div class="col-md-4">
                    <input class="btn-primary" id="form1Submit" name="form1Submit" type="submit" value="Submit" form="form1"/>
                </div>
                <div class="col-md-4">
                    <input class="btn-primary" id="form2Submit" name="form2Submit" type="submit" value="Submit" form="form2"/>
                </div>
                <div class="col-md-4">
                    <input class="btn-primary" id="form3Submit" name="form3Submit" type="submit" value="Submit" form="form3"/>
                </div>
            </div>
                    
        </div>
                    
        
        
        <script src="<%= request.getContextPath() %>/jquery-1.10.2.min.js"></script>
        <script src="<%= request.getContextPath() %>/bootstrap.min.js"></script>
        
    </body>
</html>
