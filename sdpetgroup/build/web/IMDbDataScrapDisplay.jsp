
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>IMDb Data Scrap Display</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <style>
            #myNav{
                padding-bottom: 3%;
            }
            
            #h4{
                padding-bottom: 3%;
            }
            
            #content{
                padding-bottom: 3%;
            }
            
            #footer{
                padding-bottom: -1%;
                position: fixed
            }
            
            #body{
                padding-bottom: 0;
            }
        </style>
    </head>
    
    <body id="body">
        
        <header id="myNav">
            <jsp:include page="WEB-INF/jsp/NavBar.jsp"></jsp:include>
        </header>
        <h2>IMDb Latest New Results</h2><hr><br>
        <h4 id="h4">link to IMDb home page where I scrapped their latest new <a href="http://www.imdb.com/">click</a></h4>
        <div class="container" id="content">
            
            
                <div class="row">
                    <c:forEach items="${LastestNews}" var="item">
                    <div class="col-sm-4">
                        <h4>${item.header}</h4><br>
                        <img src="${item.image}"><br>
                        <p>${item.article}</p>
                    </div>
                    </c:forEach>
                </div>
            
               
        </div>
        
        
            <jsp:include page="WEB-INF/jsp/footer.jsp"></jsp:include>
        
    </body>
</html>
