<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        <style>
            #message{
                margin-top: 5%;
                margin-bottom: 10%;
                text-align: center;
            }
            
            #about{
                margin-top: 10%;
                margin-bottom: 10%;
                text-align: left;
            }
            
            #dataMiningDemo{
                margin-top: 10%;
                margin-bottom: 10%;
                padding-top: 3%;
                padding-bottom: 3%;
            }
            
            .resize{
                padding-bottom: 68px;
            }
            
            .jumbotron{
                background-image: url("http://8449-presscdn-0-66.pagely.netdna-cdn.com/wp-content/uploads/2013/11/big-data_0.jpg");
                
             }
            
            #header{
                padding-bottom: 5%;
                /*position: fixed;*/
            }
            
            .bbb{
                padding-bottom: 8%;
            }
            
        </style>
        
    </head>

    <body>
        
    <header id="header">
        <jsp:include page="NavBar.jsp"></jsp:include>
    </header>
    
    
    
    
    
     <div class="container">
        <div class="jumbotron" ></div>
    </div> 
             
    
    
   <div class="container" id="about">
        <div class="row">
            <div class="col-sm-12">
                <h5>About</h5>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <p>
                    We use the latest Data Mining & Web Browser Automation Software to extract data from virtually any web page or database in <span style="color: red"><b>seconds</b></span>.
                    <br>Our goal is to extract information from a data set and transform it into an understandable structure for further use by you.
                </p>
            </div>
        </div>
    </div>
    
    <!-- data mining demo's -->
    <div id="dataMiningDemo" class="container panel panel-default">
        
        <h5 style="padding-bottom: 2%;">Data Extraction and Web Browser Automation Demo's</h5>
        <section>
        
            <div class="container bbb" >
                <h5>Better Business Bureau Web Site Data Extraction (<span style="color: red"><b>Must Have Chrome's web browser for this demo</b></span>)</h5>
                <p>
                    Below you see a search engine that uses the Better Business Bureau's website to locate businesses and get
                    their contact info. <br>In this extraction I automate Chrome's web browser to search the Better Business Bureau website 
                    and then extract specific data. <br>That data is then displayed on this website :)
                </p>
                <form method="get" action="BBBSearchServlet" class="bodyContent" style="width: 95%">
                    <div class="form-group">
                        <label>Find</label>
                        <input type="text" name="search" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Near</label>
                        <input type="text" name="location" class="form-control">
                    </div>
                    <input type="submit">
                </form>
            </div>
            
            <div class="container">
                <h5>IMDb Latest News Extraction (Work's with any web browser)</h5>
                <p>
                    In this extraction I use a tool to go to IMDb.com, and get their<br>
                    latest news content. That content is then displayed on this website :)
                </p>
                <form method="get" action="IMDbServlet" class="bodyContent">

                    <input type="submit" name="Display Data Scrap">
                </form>
            </div>

        </section>
    
      
        
    </div>
    
    
        <footer>
            <jsp:include page="footer.jsp"></jsp:include>
        </footer>
     
    </body>
    
    
</html>
