<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Liste des membres</title>
    <link rel="stylesheet" href="{{ path }}css/style.css">

</head>
<body>
    <h5 class="titre1 lienAccueil">La Bibliothèque</a></h5>
    <h1><a class="titre2 lienAccueil" href="{{ path }}home/index">Canva</a></h1>
    <main>
        <section>
            <h1>{{ membre_list }}</h1>
            <table border="1">
                <thead>
                    <tr>
                        <th>Nom</th>
                        <th>Prénom</th>
                        <th>Adresse</th>
                        <th>Code Postal</th>
                        <th>Courriel</th>
                        <th>Téléphone</th>
                        <th>Livres empruntés</th>
                        <th>Type de membre</th>
                    </tr>
                </thead>
                <tbody>
                    {% for membre in membres %}
                    <tr>
                        <td><a href="{{ path }}membre/show/{{ membre.id }}">{{ membre.nom }}</a></td>
                        <td>{{ membre.prenom }}</td>
                        <td>{{ membre.adresse }}</td>
                        <td>{{ membre.code_postal }}</td>
                        <td>{{ membre.telephone }}</td>
                        <td>{{ membre.courriel }}</td>
                        <td>{{ membre.num_livre_loue }}</td>
                        <td>{{ membre.type_membre }}</td>
                    </tr>
                    {% endfor %}
                </tbody>               
            </table>
            <p><a class="ajouterMembre" href="{{ path }}membre/create">Ajouter un membre</a></p>
        </section>
    </main>
    <footer>
    © Pierre-Luc Moisan - Tous les droits réservés
    </footer>
</body>
</html>