<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Restaurant</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href = "css/bootstrap.min.css" rel="stylesheet">
        <link href = "css/bootstrap.css" rel="stylesheet">
        <link href = "css/style.css" rel="stylesheet">
<!--        <link href="css/managerstyle.css" rel="stylesheet" type="text/css"/>-->
    </head>
    <body>
        <script src ="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.2.min.js"></script>
        <script src ="js/bootstrap.js"></script>
        <div class="container col-xs-12">        
            <div class="navbar navbar-default navbar-fixed-top">

                <a href="#" class="navbar-brand">A Restaurant Website</a>
                
                    <button class ="navbar-toggle" data-toggle="collapse" data-target=".navHeaderCollapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <div class="set-login collapse navbar-collapse navHeaderCollapse">
                        <div class="pull-right">
                            <p>Hello&nbsp;<c:out value="${theUser.firstName}"></c:out></p>    
                        <form action="user" method="post">
                        <div class ="nav navbar-nav">
                            <input type="hidden" name="action" value="busboylogout">
                            <input type="submit" class="btn btn-link btn-group-lg" name="Logout" value="Logout">
                        </div>
                        </form>
                        </div>    
                    </div>
               
            </div>
        </div>