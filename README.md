# CodageVacances

Nous avons conçu une application mobile Android permettant de faire du prêt de livres entre particuliers. L’idée est que chaque utilisateur possède sa propre librairie personnelle qu’il souhaite partager. Si plusieurs utilisateurs possèdent le même livre à partager, il ne sera évidemment pas ressaisi mais choisi dans une liste. Chaque utilisateur peut parcourir l’ensemble des livres, et emprunter un livre à un autre utilisateur. Quand il va sélectionner un livre, il verra le ou les utilisateurs qui possèdent ce livre, et pourra obtenir leurs coordonnées. Nous stockerons les dates de réservation et de restitutions des livres, ainsi que les préteurs et les emprunteurs (utilisateurs de l’application). Chaque livre sera rattaché à une catégorie, et aura également un statut (disponible, ou emprunté).<br>
La recherche de livre s'effectue avec une requete HTTP en GET du titre du livre sélèctionner dans la liste ou par recherche personnalisé. <br> <br>

### Exemple d'utilisation :
Dans cette exemple le livre rechercher est "L'histoire du monde", et il nous sort 2 exemplaires : 
![exemple](/assets/exemple.png)


### Architecture applicative : <br>
![archi](/assets/archiAppli.png)

### Fonctionnement de mon API :
*Pour plus d'info voir le phpinfo ``.../phpdoc/``*

L'api renvoi de base tous les Livres. <br>
Le ``.../?list="titre de livre"`` renvoi tous les exemplaires diponible pour ce livre. <br>
Le ``.../?recherche="votre recherche personalisé"`` renvoi la liste de tous les livres comportant les caractères taper. <br>

### Diagramme de cas d'utilisation
![archi](/assets/diag.png)

### Diagramme de séquence
![archi](/assets/diag2.png)
