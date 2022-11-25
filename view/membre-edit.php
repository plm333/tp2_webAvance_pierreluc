<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="{{ path }}css/style.css">
</head>
<body>
<main>
    <h1>Modifier </h1>
        <form action="{{ path }}membre/update" method="post">
            <input type="hidden" name="id" value="{{ membre.id }}">
            <label>Nom 
                <input type="text" name="nom" value="{{ membre.nom }}">
            </label>
            <label>Prénom 
                <input type="text" name="prenom" value="{{ membre.prenom }}">
            </label>
            <label>Adresse
                <input type="text" name="adresse" value="{{ membre.adresse }}">
            </label>
            <label>Code Postal
                <input type="text" name="code_postal" value="{{ membre.code_postal }}">
            </label>
            <label>Téléphone
                <input type="text" name="telephone" value="{{ membre.telephone }}">
            </label>
            <label>Courriel
                <input type="email" name="courriel" value="{{ membre.courriel }}">
            </label>
            <label>Livres empruntés
                <input type="text" name="num_livre_loue" value="{{ membre.num_livre_loue }}">
            </label>
            <label>Type de membre
                <input type="text" name="type_membre" value="{{ membre.type_membre }}">
            </label>
            <input class="activerBtn"  type="submit" value="Modifier">
        </form>
        <form action="{{ path }}membre/delete" method="post">
            <input type="hidden" name="id" value="{{ membre.id }}">
            <input class="activerBtn"  type="submit" value="Supprimer">
        </form>
        <p><a href="{{ path }}membre/index">Retour</a></p>
    </main>
    
</body>
</html>