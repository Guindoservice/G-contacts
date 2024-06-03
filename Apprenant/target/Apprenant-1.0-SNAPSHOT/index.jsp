<%-- 
    Document   : index
    Created on : 28 mai 2024, 12:33:56
    Author     : abdala.guindo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./form.css"/>
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
   
    </head>
    
    <body>
        <div class="container-fluid content">
        <div class="mt-20" style="height:80px;"></div>
        <div class="container mt">
            <h1 class="text-center text-warning">Bienvenu sur l'application gestion des contacts</h1>

        </div>
        
        <div class="container text-center"> 
            <img src="./Home.png" alt="alt" width="600" height="600"/>
        </div>

        <div class="container text-center btnss">
            <a href="contacts.jsp">Aller à la page contact</a>
            
        </div>
    </div>
 <style>
    

       
	
a:hover{
   background-color: black;
   border: 10px solid white;
   color: orange;
   color: white !important;
border-radius: 50px;
border-color: orange !important;
transition: all 0.5s ease 0s;

}

 a  {
 
     border-radius: 10px;
     background-color: orange;
    color: black;
    font-size: 40px;
     width: 300px;
    height: 145px;
    border: 10px solid black;
}
.btnss{
    display:flex;
    justify-content: center;
    text-align: center;
}
.content{
   
    height: 800px;
}

        </style>

    </body>
</html>
