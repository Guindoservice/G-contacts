<%-- 
    Document   : contacts
    Created on : 28 mai 2024, 12:34:14
    Author     : abdala.guindo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="./Style.css"/>>
        <title>contacts</title>
      
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    </head>
    <body>
        <!--debut denavbar-->
        <nav class="navbar navbar-expand-sm bg-warning navbar-white fixed-top">

  <div class="container-fluid">
    <!-- Links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Accueil</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="contacts.jsp">Contacts</a>
      </li>
    </ul>
  </div>

</nav>
        <h3 class="fixed-top text-center">Application de gestion des contacts</h3> 

        <!--fin de navbar-->
<div class="conatainer">
    
    <div class="row gx-5" style="width: 100%;">
        <div class="mt-20" style="height:100px;"></div>
        <h2 class="text-warning text-center">Formulaire d'enregistement</h2>
        <div class="col m-5 rounded p-3 border border-warning p-3" >
            
            <form action="EtudiantServlet" method="post" >
		<div class="content">
            <div class="labelles">
                <label for="nom">Nom :</label>
            <input class="form-control rounded p-1 border border-warning p-2 type="text" id="nom" name="nom" placeholder="Votre nom" required>
            </div>
            <div class="labelles">
                <label for="nom">prenom :</label>
                <input class="form-control rounded p-1 border border-warning p-2 type="text" id="prenom" name="prenom" placeholder="Votre prénom" required>
            </div>
            
            <div class="labelles">
            <label for="number">Téléphone : </label>
            <input class="form-control rounded p-1 border border-warning p-2 type="number" id="tel" name="tel" placeholder="Votre numéro de téléphone" required>
            </div>
            <div class="labelles">
            <label for="competence">Competence : </label>
            <input class="form-control rounded p-1 border border-warning p-2 type="text" id="competence" name="competence" placeholder="Votre comptétence favorie" required>
            </div>
            <div class="labelles">	
            <label for="email">Email :</label>
            <input class="form-control rounded p-1 border border-warning p-2 type="email" id="email" name="email" placeholder="exemple@gmaim.com"required>
        </div>
            <div class="labelles">
            <label for="adresse">Adresse :</label>
            <input class="form-control rounded p-1 border border-warning p-2 type="text" id="adresse" name="adresse" placeholder="Votre Adresse" required>
        </div>
        </div>

            <div class="text-center">
                <input type="submit" class="btn  btn-outline-warning mt-4 text-center" value="Ajouter">
             </div>
        </form>
	
        </div>
            
        <div class="col"> 
            <img src="./contact.png" alt="alt" width="500" height="500"/>
        </div>
    </div>
	
</div>
<div class="container-fluid border p-3 scroll" >
    <div class="Liste text-center  ">
        <h3>Listes des contacts des apprenant d'ODK</h3> 
    </div>
    
  
    <table class="table text-center border-warning border p-3" style="width: 100%;">
        <tr >
            
            <th class="bg-warning text-dark border p-3">Nom</th>
            <th class="bg-warning text-dark border p-3">Préom</th>
            <th class="bg-warning text-darkborder p-3">Téléphone</th>
            <th class="bg-warning text-dark border p-3">Compétence favorie</th>
            <th class="bg-warning text-dark border p-3">Email</th>
            <th class="bg-warning text-dark border p-3">Adresse</th> 
            <th class="bg-warning text-dark border p-3">Actions</th>
        </tr>
        <c:forEach items= "${etudiant }" var="conte" >
        
            
        <tr style="border-bottom: 2px solid orange;">
            
            <td>${conte.nom}</td>
            <td>${conte.prenom}</td>
            <td>${conte.tel}</td>
            <td>${conte.competence}</td>
            <td>${conte.email}</td>
             <td>${conte.adresse}</td>
             <td class="row">
                <form action="EtudiantServlet" method="get" class="col" >
                    <input type="hidden" name="action" value="delete">
                    <input type="hidden" name="nom" value="${conte.nom}">  
                <button class="btn btn-danger" type="submit"></a>Supprimer</button>
                 </form>
                <form action="contacts" method="get"class="col" >
                 
                <button class="btn btn-primary" type="submit">Modifier</button> 
                
                 </form>
            </td>
            
        </tr>
         </c:forEach>
       
    </table>
    
   
</div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
        <style>
            .scroll{
                max-height: 500px;
                overflow-y: scroll; 
                border-radius: 8px;
            }
        </style>
    </body>
</html>
