<%-- 
    Document   : NavBar
    Created on : Nov 17, 2017, 5:52:52 PM
    Author     : kendrabooker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Navigation Bar</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    
    <body>
        
        <div class="navbar-default nav" role="navigation" style="background: black;">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">links toggle button</span>
                    <span class="mdl-color--white white icon-bar"></span>
                    <span class="mdl-color--white white icon-bar"></span>
                    <span class="mdl-color--white icon-bar"></span>
                </button>
                <a href="redirect.jsp"><span class="navbar-brand" style="color:white;">Data Rush</span></a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav" style="float: right;">
                    <li><a href="http://datarush.azurewebsites.net/DataRush/index.htm#about">About</a></li>
                    <li><a href="http://datarush.azurewebsites.net/DataRush/contact.jsp">Contact</a></li>
                    <li><a href="http://datarush.azurewebsites.net/DataRush/index.htm#dataMiningDemo">Data Mining Demo's</a></li>
                </ul>
            </div>
        </div>   
        
    </body>
</html>
