<%-- 
    Document   : BBBSearchDisplay
    Created on : Nov 14, 2017, 3:52:04 PM
    Author     : kendrabooker
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    
    <body>
       
        <header>
            <jsp:include page="WEB-INF/jsp/NavBar.jsp"></jsp:include>
        </header>
        
        <h3>Better Business Bureau Search Results</h3><br>
       
        <div class="table-responsive">
           <table class="table">
               <tr>
                   <th>Business</th>
                   <th>Phone Number</th>
                   <th>Address</th>
               </tr>
            <c:forEach items="${BBBSearchResults}" var="business">
                <tr>
                    <td>${business.name}</td>
                    <td>${business.phone}</td>
                    <td>${business.address}</td>
                </tr>
            </c:forEach>
        </table> 
        </div>
        
        
        <footer>
            <jsp:include page="WEB-INF/jsp/footer.jsp"></jsp:include>
        </footer>            
    </body>
</html>
