# CodageVacances

Vous voulez concevoir une application mobile Android permettant de faire du prêt de livres entre particuliers. L’idée est que chaque utilisateur possède sa propre librairie personnelle qu’il souhaite partager. Si plusieurs utilisateurs possèdent le même livre à partager, il ne sera évidemment pas ressaisi mais choisi dans une liste. Chaque utilisateur peut parcourir l’ensemble des livres, et emprunter un livre à un autre utilisateur. Quand il va sélectionner un livre, il verra le ou les utilisateurs qui possèdent ce livre, et pourra obtenir leurs coordonnées. Nous stockerons les dates de réservation et de restitutions des livres, ainsi que les préteurs et les emprunteurs (utilisateurs de l’application). Chaque livre sera rattaché à une catégorie, et aura également un statut (disponible, ou emprunté).<br>
La recherche de livre s'effectue avec une requete HTTP en GET du titre du livre sélèctionner dans la liste ou par recherche personnalisé. <br> <br>

Dans cette exemple le livre rechercher est "L'histoire du monde", et il nous sort 2 exemplaires : 
![exemple](/assets/exemple.png)


Architecture applicative : <br>
![archi](/assets/archiAppli.png)
