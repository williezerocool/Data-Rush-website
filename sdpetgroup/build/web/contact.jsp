

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <style>
            #header{
                padding-bottom: 10%;
            }
            
            .container{
                padding-bottom: 28%;
            }
            #footer{}
        </style>
    </head>
    <body>
        <header id="header">
            <jsp:include page="WEB-INF/jsp/NavBar.jsp"></jsp:include>
        </header>
        
                
            
       <div class="container">
           <h3>Email: <a href="mailto:williesuggsdev@gmail.com?subject=Data Rush">williesuggsdev@gmail.com</a></h3>
       </div>
        
        
        
        
        <footer id="footer">
            <jsp:include page="WEB-INF/jsp/footer.jsp"></jsp:include>
        </footer>
    </body>
</html>
