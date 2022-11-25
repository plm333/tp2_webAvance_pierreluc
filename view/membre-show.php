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
        <p><strong>Nom : </strong>{{ membre.nom }}</p>
        <p><strong>Prénom : </strong>{{ membre.prenom }}</p>
        <p><strong>Adresse : </strong>{{membre.adresse}}</p>
        <p><strong>Code Postal : </strong>{{membre.code_postal}}</p>
        <p><strong>Téléphone : </strong>{{ membre.telephone }}</p>
        <p><strong>Courriel : </strong>{{ membre.courriel }}</p>
        <p><strong>Livres Empruntés : </strong>{{ membre.num_livre_loue }}</p>
        <p><strong>Type de membre : </strong>{{ membre.type_membre }}</p>
        <p><a href="{{ path }}membre/edit/{{ membre.id }}">Modifier</a></p>
        <p><a href="{{ path }}membre/index">Retour</a></p>
    </main>
</body>
</html>

