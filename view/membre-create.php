<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nouveau membre</title>
    <link rel="stylesheet" href="{{ path }}css\style.css">
</head>
<body>
    <main class="ajouterMembreForm">
        <h1>Ajouter un nouveau membre</h1>
        <form action="{{ path }}membre/store" method="post">
            <label>Nom
                <input type="text" name="nom">
            </label>
            <label>Prénom
                <input type="text" name="prenom">
            </label>
            <label>Adresse
                <input type="text" name="adresse">
            </label>
            <label>Code Postal
                <input type="text" name="code_postal">
            </label>
            <label>Téléphone
                <input type="text" name="telephone">
            </label>
            <label>Courriel
                <input type="email" name="courriel">
            </label>
            <label>Livres Empreutés
                <input type="text" name="num_livre_loue">
            </label>
            <label>Type de membre
                <input type="text" name="type_membre">
            </label>
            <input class="activerBtn" type="submit" value="Ajouter">
            <p><a href="{{ path }}membre/index">Retour</a></p>
        </form>
    </main>
</body>
</html>