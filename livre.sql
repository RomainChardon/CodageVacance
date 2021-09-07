-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : Dim 29 août 2021 à 19:47
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `api`
--

-- --------------------------------------------------------

--
-- Structure de la table `livre`
--

DROP TABLE IF EXISTS `livre`;
CREATE TABLE IF NOT EXISTS `livre` (
  `isbn` varchar(100) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `editeur` varchar(255) NOT NULL,
  `format` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  PRIMARY KEY (`isbn`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `livre`
--

INSERT INTO `livre` (`isbn`, `titre`, `nom`, `prenom`, `editeur`, `format`, `section`) VALUES
('978-2-266-17442-8', 'extraordinaires aventures de Tom Scatterhorn (Les)', 'Chancellor', 'Henry', 'Pocket Jeunesse', '23 x 14 cm', 'Jeunesse'),
('ISBN_010a', 'Titre_200a', 'Auteur_principal_nom_700a', 'Auteur_principal_prenom_700b', 'Editeur_210c', 'Format_215d', 'Section_997e'),
('2-03-652407-9', 'L\'histoire du monde', '', '', 'Larousse', '29 cm', 'Jeunesse'),
('978-2-8098-0563-5', 'L\'eau des anges', 'Egémar', 'Béatrice', 'Galapagos', '21 cm', 'Jeunesse'),
('978-2-36231-035-5', 'Quand on parle du loup', 'Harrison', 'Lisi', 'Castelmore', '22 cm', 'Jeunesse'),
('978-2-226-20937-5', 'étang aux libellules (L\')', 'Ibbotson', 'Eva', 'Albin Michel-Jeunesse', '22 x 15 cm', 'Jeunesse'),
('978-2-8098-0564-2', 'Avant les ténèbres', 'Cluzeau', 'Nicolas', 'Galapagos', '21 cm', 'Jeunesse'),
('978-2-01-201748-1', 'La boussole du Club des cinq', 'Blyton', 'Enid', 'Hachette jeunesse', '18 cm', 'Jeunesse'),
('978-2-7470-2469-3', 'Momo', 'Ende', 'Michael', 'Bayard jeunesse', '19 cm', 'Jeunesse'),
('2-84789-206-0', 'Contes et récits vietnamiens', 'Minh Than', '', 'Delcourt jeunesse', '30 cm', 'Jeunesse'),
('978-2-35504-169-3', 'Je m\'appelle pas Ben Laden !', 'Chambaz', 'Bernard', 'Rue du monde', '27 cm', 'Jeunesse'),
('978-2-211-20802-4', 'Ogres', 'Ungerer', '', '', '1 vol. (148 p.)', 'Jeunesse'),
('978-2-246-78070-0', 'Le cochon enchanté', '', '', 'Grasset', '29 cm', 'Jeunesse'),
('2-7324-2964-3', 'Gauchos de Patagonie', 'Bourseiller', 'Philippe', 'La Martinière', '32 cm', 'Adulte'),
('978-2-88908-063-2', 'A minuit', 'Mörike', 'Eduard', 'la Joie de lire', '14 x 30 cm', 'Jeunesse'),
('978-2-01-202410-6', 'Les cinq mènent l\'enquête', 'Voilier', 'Claude', 'Hachette jeunesse', '18 cm', 'Jeunesse'),
('978-2-01-322840-4', 'Jeanne', 'Cassabois', 'Jacques', 'le Livre de poche jeunesse', '18 cm', 'Jeunesse'),
('978-2-01-322396-6', 'Emile et les détectives', 'Kästner', 'Erich', 'Le livre de poche jeunesse', '18 x 13 cm', 'Jeunesse'),
('2-220-05471-3', 'On voyage', 'Helft', 'Claude', 'Desclée de Brouwer', '21 cm', 'Jeunesse'),
('978-1-4454-3924-2', 'Nous les filles !', 'Delmege', 'Sarah', 'Parragon', '20 x 17 cm', 'Jeunesse'),
('2-84789-218-4', 'Radio Nouba', 'Bonneval', 'Gwen de', 'Delcourt jeunesse', '30 cm', 'Jeunesse'),
('978-1-4454-3923-5', 'Nous les garçons !', 'Crossick', 'Matt', 'Parragon', '20 x 17 cm', 'Jeunesse'),
('2-220-05444-6', 'On prend des médicaments', 'Helft', 'Claude', 'Desclée de Brouwer', '21 cm', 'Jeunesse'),
('2-220-05443-8', 'Profession', '', 'Aubrun', '', '1 vol. (Non paginé [15] p.)', 'Livre(s)'),
('2-84565-735-8', 'Rufus le loup', 'Tarek', '', 'Soleil', '33 cm', 'Jeunesse'),
('2-215-08062-0', 'La mer', 'Bélineau', 'Nathalie', 'Ed. Fleurus', '24 cm', 'Jeunesse'),
('2-940334-28-5', 'Richard et William sauvent le monde', 'Rod', '', 'Paquet', '31 x 22 cm', 'Adulte'),
('2-205-05466-X', 'La ligne de front', 'Larcenet', 'Manu', 'Dargaud', '30 cm', 'Adulte'),
('2-215-07678-X', 'J\'apprends à dessiner la vie quotidienne', 'Legendre-Kvater', 'Philippe', 'Fleurus', '24 x 22 cm', 'Jeunesse'),
('2-215-07597-X', 'Collages de serviettes pour le jardin et la maison', 'Enderlen-Debuisson', 'Marie', 'Fleurus', '26 cm', 'Jeunesse'),
('2-215-07596-1', 'Argile au tour', 'Tardio-Brise', 'Liliane', 'Ed. Fleurus', '25 cm', 'Jeunesse'),
('2-200-26655-3', 'Petite histoire de la France au 20e siècle', 'Prost', 'Antoine', 'Armand Colin', '24 x 16 cm', 'Adulte'),
('2-913288-23-5', 'Les chevêches aux yeux d\'or', 'Haroux-Métayer', 'Eliane', 'Ed. de Terran', '21 x 23 cm', 'Jeunesse'),
('2-220-05186-2', 'On rêve d\'avoir un chat', 'Helft', 'Claude', 'Desclée de Brouwer', '21 cm', 'Jeunesse'),
('2-09-211352-6', 'Les grands explorateurs', 'Platt', 'Richard', 'Nathan', '20 cm', 'Jeunesse'),
('2-09-211355-0', 'Les gladiateurs', 'Malam', 'John', 'Nathan', '20 cm', 'Jeunesse'),
('978-2-7499-2403-8', 'Mirages', 'Robillard', 'Anne', 'M. Lafon', '24 cm', 'Adulte'),
('978-2-01-292152-8', 'ABC d\'Albert Jacquard pour changer le monde (L\')', 'Jacquard', 'Albert', 'Hachette jeunesse', '23 cm', 'Jeunesse'),
('979-10-90286-15-3', 'arc-en-ciel des familles (L\')', 'Douru', 'Muriel', 'Ed. Des ailes sur un tracteur', '16 x 23 cm', 'Jeunesse'),
('978-2-330-04818-1', 'I like Europe', 'Gillet', 'Caroline', 'Actes Sud junior', '23 cm', 'Jeunesse'),
('978-2-35000-585-0', 'fables de La Fontaine pour réfléchir (Les)', 'Pelisse', 'Laetitia', 'Oskar jeunesse', '23 cm', 'Jeunesse'),
('978-2-909771-59-5', 'changelin (Le)', 'Lindhom', 'Per August', 'Corentin', '21 x 20 cm', 'Jeunesse'),
('2-903181-06-3', 'Le Livre conquérant', '', '', 'PROMODIS', '31 cm', 'Adulte'),
('978-2-84596-110-4', 'Père Noël mes fesses !', 'Lenain', 'Thierry', 'les 400 coups', '23 cm', 'Jeunesse'),
('978-2-918689-00-3', 'Bonne nuit', '', 'Schärer', '', '1 vol. (non paginé [24] p.)', 'Livre(s)'),
('978-2-918689-01-0', 'Chamailles', 'Schärer', 'Kathrin', 'Ane bâté éd.', '24 x 27 cm', 'Jeunesse'),
('978-2-87767-644-1', 'Le trésor', 'Shulevitz', 'Uri', 'Kaléidoscope', '24 cm', 'Jeunesse'),
('978-2-35965-008-2', 'La neige fond sur ton coeur', 'Schmitzberger', 'Simone', 'les Petites vagues éd.', '24 x 30 cm', 'Jeunesse'),
('978-2-87767-631-1', 'Où est Pachydou ?', 'Dunbar', 'Polly', 'Kaléidoscope', '29 cm', 'Jeunesse'),
('978-2-87767-632-8', 'Poulette coquette', 'Dunbar', 'Polly', 'Kaléidoscope', '29 cm', 'Jeunesse'),
('978-2-84801-431-9', 'voyage (Le)', 'Fontanel', 'Béatrice', 'Tourbillon', '21 x 29 cm', 'Jeunesse'),
('978-2-7234-7187-9', 'Le vrai-faux portrait officiel du Père Noël', 'Misslin', 'Sylvie', 'Glénat', '29 cm', 'Jeunesse'),
('978-2-07-062795-0', 'Paddy MacPat', 'Donaldson', 'Julia', 'Gallimard jeunesse', '28 cm', 'Jeunesse'),
('978-2-211-09722-2', '10 feuilles volantes', 'Möller', 'Anne', 'Archimède-l\'Ecole des loisirs', '29 cm', 'Jeunesse'),
('978-2-211-09708-6', 'Et toi ?', 'Sanders', 'Alex', 'Loulou & Cie-l\'Ecole des loisirs', '23 cm', 'Jeunesse'),
('2-09-211356-9', 'Méchants et truands', ' espions', ' criminels', '', '2004', '3464910023'),
('978-2-7459-4779-6', '25 chasses au trésor', 'Rocher', 'Mathieu', 'Milan', '26 cm', 'Jeunesse'),
('978-2-8063-0074-4', 'Je crée avec 3 x rien !', 'Bull', 'Jane', 'Langue au chat', '29 cm', 'Jeunesse'),
('978-2-211-09573-0', 'Attention', '', 'Wormell', '', '1 vol. (non paginé [28] p.)', 'Livre(s)'),
('978-2-211-09575-4', 'Inuk est amoureux', 'Norac', 'Carl', 'Pastel', '25 cm', 'Jeunesse'),
('978-2-916170-71-8', 'petits points (Les)', 'Claudet', 'Philippe', 'les Doigts qui rêvent', '22 x 21 cm', 'Jeunesse'),
('978-2-7404-2716-3', 'grandes merveilles du monde (Les)', 'Yu', 'Soon-Hye', 'Mango-Jeunesse', '32 x 25 cm', 'Jeunesse'),
('978-2-7404-2798-9', 'Petite boîte jaune', 'Carter', 'David A.', 'Mango jeunesse', '17 cm', 'Jeunesse'),
('978-2-211-09726-0', 'Le jour où nous étions seuls au monde', 'Nilsson', 'Ulf', 'Pastel', '22 cm', 'Jeunesse'),
('978-2-35289-052-2', 'Au lit !', 'Cumont', 'Louise-Marie', 'MeMo', '25 cm', 'Jeunesse'),
('978-2-211-09711-6', 'Guili guili', 'Poussier', 'Audrey', 'Loulou & Cie-l\'Ecole des loisirs', '23 x 24 cm', 'Jeunesse'),
('978-2-211-09713-0', 'Le plus beau', 'Poussier', 'Audrey', 'Loulou & Cie-l\'Ecole des loisirs', '23 x 24 cm', 'Jeunesse'),
('978-2-85181-747-1', 'Guitou', 'Melquiot', 'Fabrice', 'l\'Arche', '21 cm', 'Jeunesse'),
('978-2-03-584660-0', 'La fin des dinosaures', 'Bacchin', 'Matteo', 'Larousse', '32 cm', 'Jeunesse'),
('978-2-211-08134-4', 'En 2000 trop loin', 'Rascal', '', 'Pastel', '27 cm', 'Jeunesse'),
('978-2-35488-135-1', 'Marie Curie', '', 'Grard', '', '1 vol. (53 p.)', 'Livre(s)'),
('978-2-01-292114-6', 'Dis pourquoi le cochon a la queue en tire-bouchon ?', 'Mathivet', 'Eric', 'Hachette jeunesse', '24 cm', 'Jeunesse'),
('978-2-278-06477-9', 'vaches de Noël (Les)', 'Le Touzé', 'Anne-Isabelle', 'Didier Jeunesse', '26 x 24 cm', 'Jeunesse'),
('978-2-84006-642-2', 'Les tartes et les cakes', 'Teyras', 'Emmanuelle', 'Mila éd.', '33 cm', 'Jeunesse'),
('978-2-917289-21-1', 'Une vie merveilleuse', 'Pigois', 'Melissa', 'Ed. Belize', '23 x 24 cm', 'Jeunesse'),
('978-2-7324-4525-0', 'Je mesure tout', 'Trius', 'Mireia', 'La Martinière jeunesse', '22 cm', 'Jeunesse'),
('978-2-7467-1289-8', 'Un petit trou de rien du tout', 'Pin', 'Isabelle', 'Autrement', '22 cm', 'Jeunesse'),
('978-2-7467-1293-5', 'Mon chien et moi', 'Yamada', 'Keita', 'Autrement jeunesse', '20 cm', 'Jeunesse'),
('978-2-87767-641-0', 'La boîte au trésor', 'Escoffier', 'Michaël', 'Kaléidoscope', '31 cm', 'Jeunesse'),
('978-2-7404-2556-5', 'Ce que fait toujours le vrai Père Noël', 'Teyras', 'Emmanuelle', 'Mango jeunesse', '25 cm', 'Jeunesse'),
('978-2-7470-2450-1', 'kilos en trop (Les)', 'Sautereau', 'François', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-244-41960-2', 'Il était une fois le Père Noël', 'Palluy', 'Christine', 'Ed. Lito', '32 cm', 'Jeunesse'),
('978-2-218-92906-9', 'Noël !', 'Laval', 'Thierry', 'Hatier', '21 x 27 cm', 'Jeunesse'),
('978-2-87142-684-4', 'Mon père Noël à moi !', 'Robberecht', 'Thierry', 'Mijade', '29 cm', 'Jeunesse'),
('978-2-211-09773-4', 'Mes lunettes de rêve', 'Mets', 'Alan', 'l\'Ecole des loisirs', '31 cm', 'Jeunesse'),
('2-7427-4845-8', 'cahier jaune (Le)', 'Sautereau', 'François', 'Actes Sud junior', '18 x 13 cm', 'Jeunesse'),
('978-2-915970-22-7', 'Enfin seule', 'Causse', 'Manu', 'Où sont les enfants ?', '23 x 23 cm', 'Jeunesse'),
('978-2-7470-3688-7', 'bête de la cave (La)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-02-100037-5', 'Comme en hiver', 'Servant', 'Stéphane', 'Seuil jeunesse', '25 cm', 'Jeunesse'),
('978-2-07-062709-7', 'Chloé et Félix font la fête', 'Roederer', 'Charlotte', 'Gallimard jeunesse', '17 cm', 'Jeunesse'),
('978-2-919372-04-1', 'Georges Méliès', '', 'Bianu', '', '1 vol. (45 p.)', 'Livre(s)'),
('978-2-09-252554-8', 'Toutes mes histoires préférées', 'Caputo', 'Natha', 'Nathan', '22 cm', 'Jeunesse'),
('978-2-7470-3319-0', 'fièvre de la pleine lune (La)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-35241-042-3', 'Sucré à salé', 'Witschger', 'Anne-Laure', 'Ed. Frimousse', '15 cm', 'Jeunesse'),
('978-2-330-05334-5', 'Crash-test', 'Claro', '', 'Actes Sud', '22 cm', 'Adulte'),
('978-2-7470-3689-4', 'peau du loup-garou (La)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-330-05318-5', 'source (La)', 'Garat', 'Anne-Marie', 'Actes Sud', '24 cm', 'Adulte'),
('978-2-7470-3691-7', 'Cauchemars en série', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-330-05360-4', 'Ah ! Ca ira', 'Lachaud', 'Denis', 'Actes Sud', '22 cm', 'Adulte'),
('978-2-220-06105-4', 'La confusion des valeurs', 'Guillebaud', 'Jean-Claude', 'Desclée de Brouwer', '21 cm', 'Adulte'),
('978-2-7470-3686-3', 'maison des morts (La)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-36279-156-7', 'variante chilienne (La)', 'Raufast', 'Pierre', 'Alma éditeur', '19 cm', 'Adulte'),
('978-2-8097-0137-1', 'Les nouvelles aventures de l\'école des chats', '2', '3', '', 'DL 2009', '4147950023'),
('978-2-7470-3455-5', 'fantôme du miroir (Le)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-36242-054-2', 'Mémoires des failles', 'Annocque', 'Philippe', 'Editions de l\'Attente', '20 cm', 'Adulte'),
('2-87730-707-7', 'Transgression', 'Khan', 'Uzma Aslam', 'P. Picquier', '21 cm', 'Adulte'),
('978-2-7470-3692-4', 'Mort de peur', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-84219-534-2', 'Un chato en Espagne', 'Bard', 'Patrick', 'Editions Baleine', '18 cm', 'Adulte'),
('978-2-7470-3452-4', 'film d\'horreur (Le)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-84219-535-9', 'Il était tout froid dans l\'Est', 'Bourcy', 'Thierry', 'Editions Baleine', '18 cm', 'Adulte'),
('2-940349-00-2', 'légistes enquêtent (Les)', 'Pfeiffer', 'Hans', 'Scènes de crimes', '21 x 14 cm', 'Adulte'),
('978-2-7470-3687-0', 'colère de la momie (La)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-35294-848-3', 'enchantements d\'Ambremer (Les)', 'Pevel', 'Pierre', 'Bragelonne', '22 cm', 'Adulte'),
('978-2-84682-267-1', 'Le choeur des femmes', 'Winckler', 'Martin', 'POL', '23 cm', 'Adulte'),
('978-2-7470-3446-3', 'Terrible internat', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-35294-849-0', 'élixir d\'oubli (L\')', 'Pevel', 'Pierre', 'Bragelonne', '22 cm', 'Adulte'),
('978-2-919372-02-7', 'Catherine Kousmine', 'Aymeries', 'Jacqueline', 'Ed. A dos d\'âne', '15 cm', 'Jeunesse'),
('978-2-35294-850-6', 'royaume immobile (Le)', 'Pevel', 'Pierre', 'Bragelonne', '22 cm', 'Adulte'),
('978-2-7470-3320-6', 'Kidnappés dans l\'espace', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-283-02890-2', 'tournée d\'adieux (La)', 'Paris', 'Thomas', 'Buchet-Chastel', '19 cm', 'Adulte'),
('978-2-7096-3051-1', 'Presque mort', 'Edwardson', '°Ake', 'Lattès', '23 cm', 'Adulte'),
('978-2-7470-3899-7', 'vacances de l\'angoisse (Les)', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-7021-5637-7', 'Fils du Shéol', 'Benmalek', 'Anouar', 'Calmann-Lévy', '22 cm', 'Adulte'),
('978-2-234-06230-6', 'Dis oui', 'roman', 'Lethielleux', '', '1 vol. (247 p.)', 'Livre(s)'),
('978-2-7470-3898-0', 'Jeux de monstres', 'Stine', 'R. L.', 'Bayard Jeunesse', '18 x 13 cm', 'Jeunesse'),
('978-2-7021-5806-7', 'Mémoires fauves', 'Guitton', 'René', 'Calmann-Lévy', '22 cm', 'Adulte'),
('2-246-50031-1', 'In extremis', 'Morrell', 'David', 'Grasset', '23 cm', 'Adulte'),
('978-2-930607-14-6', 'Tête-Dure', 'Pittau', 'Francesco', 'Editions les Carnets du dessert de lune', '20 cm', 'Adulte'),
('978-2-915732-39-9', 'Les recettes du Petit Nicolas', 'Beaupré', 'Christine de', 'IMAV éd.', '21 cm', 'Jeunesse'),
('978-2-07-012620-0', 'Les arrangeurs', 'Tellier-Loniewski', 'Laurence', 'Gallimard', '21 cm', 'Adulte'),
('978-2-211-20466-8', 'erreur de Pascal (L\')', 'Seyvos', 'Florence', 'Ecole des loisirs', '19 x 13 cm', 'Jeunesse'),
('978-2-84626-994-0', 'Des poupées et des anges', 'Hamdi', 'Nora', 'Au diable Vauvert', '20 cm', 'Adulte'),
('978-2-226-18772-7', 'Je viens de toutes mes enfances', 'Salomé', 'Jacques', 'Albin Michel', '23 cm', 'Adulte'),
('2-85157-245-8', 'Tableautins', 'Bruch', 'Marie-Anne', 'Lanore', '19 cm', 'Adulte'),
('978-2-211-09368-2', 'Voleuse de peluche', 'Seyvos', 'Florence', 'Ecole des loisirs', '19 x 13 cm', 'Jeunesse'),
('978-2-35949-434-1', 'échoués (Les)', 'Manoukian', 'Pascal', 'Don Quichotte éditions', '21 cm', 'Adulte'),
('2-84755-055-0', 'Le chêne parlant', 'Sand', 'George', 'Saint-Mont', '10 x 14 cm', 'Jeunesse'),
('978-2-213-68702-5', 'Effraction', 'Defossé', 'Alain', 'Fayard', '22 cm', 'Adulte'),
('978-2-213-68661-5', 'uns contre les autres (Les)', 'Maubert', 'Franck', 'Fayard', '22 cm', 'Adulte'),
('978-90-317-3213-5', 'Cuisine avec Nelly & César', 'Godon', 'Ingrid', 'Averbode', '28 x 24 cm', 'Jeunesse'),
('978-2-226-19001-7', 'Tout pour plaire et toujours célibataire', 'Cadalen', 'Sophie', 'Albin Michel', '23 cm', 'Adulte'),
('978-2-08-128917-8', 'Un amour impossible', 'Angot', 'Christine', 'Flammarion', '21 cm', 'Adulte'),
('978-2-35965-037-2', 'Dans la cuisine d\'Amandine', 'Carboneill', 'Bénédicte', 'Petites vagues éd.', '21 cm', 'Jeunesse'),
('978-2-226-19245-5', 'Sauver sa peau', 'Gardner', 'Lisa', 'Albin Michel', '23 cm', 'Adulte'),
('978-2-36221-146-1', 'La cuisine des héros', 'Major', 'Lenia', 'Ed. Mic-Mac', '33 cm', 'Jeunesse'),
('978-2-08-137244-3', 'Vladimir Vladimirovitch', 'Chambaz', 'Bernard', 'Flammarion', '21 cm', 'Adulte'),
('978-2-08-137054-8', 'renversement des pôles (Le)', 'Côte', 'Nathalie', 'Flammarion', '21 cm', 'Adulte'),
('978-2-36221-147-8', 'La cuisine des héroïnes', 'Major', 'Lenia', 'Ed. Mic-Mac', '33 cm', 'Jeunesse'),
('978-2-84521-373-9', 'Brigitte Bardot', 'Choulant', 'Dominique', 'Autres temps éd.', '24 cm', 'Adulte'),
('2-226-16852-4', 'Sylvestre et le caillou magique', 'Steig', 'William', 'A. Michel jeunesse', '29 cm', 'Jeunesse'),
('978-2-08-134821-9', 'Il était une ville', 'Reverdy', 'Thomas B.', 'Flammarion', '21 cm', 'Adulte'),
('978-2-213-63700-6', 'Le fol enfant', 'Vlady', 'Marina', 'Fayard', '19 cm', 'Adulte'),
('978-2-226-17383-6', 'Shrek !', 'Steig', 'William', 'Albin Michel-Jeunesse', '30 x 23 cm', 'Jeunesse'),
('978-2-08-134387-0', 'exercice de la médecine (L\')', 'Seksik', 'Laurent', 'Flammarion', '21 cm', 'Adulte'),
('978-2-07-061225-3', 'Griffes de glace', 'Gilman', 'David', 'Gallimard jeunesse', '22 cm', 'Jeunesse'),
('978-2-203-02015-3', 'La petite marionnette', 'Vincent', 'Gabrielle', 'Casterman', '22 cm', 'Jeunesse'),
('978-2-84720-608-1', 'portefeuille rouge (Le)', 'Delaflotte Mehdevi', 'Anne', 'Gaïa éditions', '22 cm', 'Adulte'),
('978-2-226-19402-2', 'Le miroir de Cassandre', 'Werber', 'Bernard', 'Albin Michel', '24 cm', 'Adulte'),
('978-2-203-04011-3', 'Ernest et Célestine au cirque', 'Vincent', 'Gabrielle', 'Casterman', '25 x 29 cm', 'Jeunesse'),
('978-2-246-77601-7', 'septième fonction du langage (La)', 'Binet', 'Laurent', 'Bernard Grasset', '21 cm', 'Adulte'),
('978-2-84876-098-8', 'Maman', 'mon combat contre l\'anorexie', 'Dupont', '', '1 vol. (236 p.)', 'Livre(s)'),
('978-2-246-85713-6', 'Profession du père', 'Chalandon', 'Sorj', 'Bernard Grasset', '21 cm', 'Adulte'),
('978-2-914528-90-0', 'Etre vétérinaire', 'Fritsch', 'Philippe', 'Lieux dits éd.', '21 cm', 'Jeunesse'),
('2-85030-954-0', 'La validation', 'Feil', 'Naomi', 'Ed. Lamarre', '22 cm', 'Adulte'),
('978-2-203-02864-7', 'Ernest et Célestine au musée', 'Vincent', 'Gabrielle', 'Casterman', '29 x 25 cm', 'Jeunesse'),
('978-2-246-85813-3', 'Histoire de l\'amour et de la haine', 'Dantzig', 'Charles', 'Bernard Grasset', '21 cm', 'Adulte'),
('978-2-246-78071-7', 'Neigeblanche et Roserouge', '', '', 'Grasset', '29 cm', 'Jeunesse'),
('978-2-916878-37-9', 'Le régime mastication', 'Cocaul', 'Arnaud', 'T. Souccar', '21 cm', 'Adulte'),
('978-2-246-85612-2', 'Je me suis tue', 'Menegaux', 'Mathieu', 'Bernard Grasset', '21 cm', 'Adulte'),
('978-2-246-85569-9', 'amour à trois (L\')', 'Poivre d\'Arvor', 'Olivier', 'Bernard Grasset', '21 cm', 'Adulte'),
('978-2-203-04013-7', 'jour', '', 'Vincent', '', '1 vol. (64 p.)', 'Livre(s)'),
('978-2-260-01916-9', 'hiver des hommes (L\')', 'Duroy', 'Lionel', 'Julliard', '21 x 13 cm', 'Adulte'),
('978-2-266-17068-0', 'pierre de l\'adieu (La)', 'Williams', 'Tad', 'Pocket', '18 x 11 cm', 'Adulte'),
('978-2-260-02096-7', 'anges meurent de nos blessures (Les)', 'Khadra', 'Yasmina', 'Julliard', '23 x 14 cm', 'Adulte'),
('978-2-36219-033-9', 'Etre militaire dans l\'armée de terre', 'Jakubowski', 'Sébastien', 'Lieux dits éd.', '21 cm', 'Jeunesse'),
('978-2-266-16966-0', 'maison de l\'ancêtre (La)', 'Williams', 'Tad', 'Pocket', '18 x 11 cm', 'Adulte'),
('978-2-7096-4655-0', 'Toute ressemblance avec le père', 'Courtès', 'Franck', 'Lattès', '21 x 13 cm', 'Adulte'),
('978-2-266-18868-5', 'Balade pour un père oublié', 'Teulé', 'Jean', 'Pocket', '18 cm', 'Adulte'),
('978-2-88250-384-8', 'Quand le diable sortit de la salle de bain', ' interruptif et pas sérieux', 'Divry', '', '1 vol. (306 p.)', 'Livre(s)'),
('978-2-36219-032-2', 'Etre hôtesse de l\'air ou steward', 'Barnier', 'Louis-Marie', 'Lieux dits éd.', '21 cm', 'Jeunesse'),
('978-2-02-099246-6', 'Au pays des vermeilles', 'Châtelet', 'Noëlle', 'Seuil', '21 cm', 'Adulte'),
('978-2-8236-0199-2', 'Ce coeur changeant', 'Desarthe', 'Agnès', 'Editions de l\'Olivier', '21 cm', 'Adulte'),
('978-2-08-134792-2', 'carnaval des hyènes (Le)', 'Mention', 'Michaël', 'Ombres noires', '21 cm', 'Adulte'),
('978-2-7459-5270-7', 'Champignons des bois et des prés', 'Bustarret', 'Nicole', 'Milan', '19 cm', 'Jeunesse'),
('978-2-02-100538-7', 'Déchets', 'Noualhat', 'Laure', 'Seuil', '21 cm', 'Adulte'),
('978-2-8180-3737-9', 'Comme Ulysse', 'Charles', 'Lise', 'POL', '21 cm', 'Adulte'),
('978-2-02-081845-2', 'Une histoire de la violence', 'Muchembled', 'Robert', 'Ed. du Seuil', '24 cm', 'Adulte'),
('978-2-8180-3693-8', 'Petite vie', 'Varetz', 'Patrick', 'POL', '21 cm', 'Adulte'),
('978-2-9524074-6-5', 'chroniques d\'Ouranos (Les)', 'Bréger', 'Véronique', 'Adventice', '20 cm', 'Adulte'),
('978-2-84876-468-9', 'Camille', 'roman', 'Daull', '', '1 vol. (185 p.)', 'Livre(s)'),
('2-273-00381-1', 'Les métiers du sport et des loisirs', '', '', 'ONISEP', '24 cm', 'Adulte'),
('2-221-04283-2', 'Yesterday', '', 'Brown', '', '423 p.-[16] p. de pl.', 'Livre(s)'),
('978-2-7436-3324-0', 'loups à leur porte (Les)', 'Fel', 'Jérémy', 'Rivages', '21 cm', 'Adulte'),
('978-2-7459-2695-1', 'Où sont passés les princes charmants ?', 'Bonnet', 'Rosalinde', 'Milan poche', '18 cm', 'Jeunesse'),
('978-2-221-18770-8', 'Français (Le)', 'Suaudeau', 'Julien', 'R. Laffont', '22 cm', 'Adulte'),
('978-2-7499-0868-7', 'Un choix', 'Sparks', 'Nicholas', 'M. Lafon', '24 cm', 'Adulte'),
('978-2-8126-0925-1', 'maladroite (La)', 'Seurat', 'Alexandre', 'Editions du Rouergue', '21 cm', 'Adulte'),
('978-2-259-21004-1', 'Michelle Obama', '', 'Mundy', '', '1 vol. (258 p.-[8] p. de pl.)', 'Livre(s)'),
('978-2-02-116665-1', 'Pour l\'amour du capitaine', 'Hamon', 'Hervé', 'Editions du Seuil', '22 cm', 'Adulte'),
('978-2-7529-0349-5', 'Kafka aux fourneaux', 'Davis', 'Lydia', 'Phébus', '21 cm', 'Adulte'),
('978-2-84337-530-9', 'Les ombres du ciel', 'Marchal', 'Eric', 'A. Carrière', '24 cm', 'Adulte'),
('978-2-02-104200-9', 'saison des Bijoux (La)', 'Holder', 'Eric', 'Editions du Seuil', '21 cm', 'Adulte'),
('978-2-02-128017-3', 'Villa des femmes', 'Majdalani', 'Charif', 'Editions du Seuil', '21 cm', 'Adulte'),
('978-2-264-04186-9', 'Cruautés conjugales', 'Owens', 'Damien', '10/18', '18 cm', 'Adulte'),
('978-2-234-07801-7', 'Il faut tenter de vivre', 'Faye', 'Eric', 'Stock', '22 cm', 'Adulte'),
('2-940349-12-6', 'Crimes sataniques', 'Goldstein', 'Steven', 'Scènes de crimes', '19 x 13 cm', 'Adulte'),
('978-2-234-07759-1', 'Nous serons des héros', 'Giraud', 'Brigitte', 'Stock', '22 cm', 'Adulte'),
('978-2-234-07729-4', 'Eva', 'Liberati', 'Simon', 'Stock', '22 cm', 'Adulte'),
('978-2-07-012698-9', 'C\'est maintenant du passé', 'Rubinstein', 'Marianne', 'Verticales-Phase deux', '21 cm', 'Adulte'),
('978-2-234-07822-2', 'Ce pays qui te ressemble', 'Nathan', 'Tobie', 'Stock', '22 cm', 'Adulte'),
('978-2-265-07672-3', 'Peur noire', 'Coben', 'Harlan', 'Fleuve noir', '23 cm', 'Adulte'),
('978-2-84304-738-1', 'Amour', 'roman', 'Vieux-Chauvet', '', '1 vol. (498 p.)', 'Livre(s)'),
('2-265-08766-1', 'Chiens de sang', 'Giébel', 'Karine', 'Fleuve noir', '20 cm', 'Adulte'),
('978-2-07-045933-9', 'Petit éloge de la nuit', 'Astier', 'Ingrid', 'Gallimard', '18 cm', 'Adulte'),
('978-2-7499-1076-5', 'Annie', '', 'Bardon', '', '1 vol. (213 p.)', 'Livre(s)'),
('978-2-918597-01-8', 'Bidoche', 'Nicolino', 'Fabrice', 'LLL', '1 vol. (385 p.)', 'Livre(s)'),
('978-2-09-252334-6', 'Emma et le cadeau de Noël', 'Morgenstern', 'Susie', 'Nathan', '27 cm', 'Jeunesse'),
('978-2-916689-27-2', 'Il y a quelque chose dans l\'air', 'Hanna', 'Virginie', 'Gecko jeunesse', '24 cm', 'Jeunesse'),
('978-2-7234-6809-1', 'L\'école des lutins', 'Van Ruymbeke', 'Laurence', 'Glénat', '29 cm', 'Jeunesse'),
('978-2-84455-123-8', 'La ballade de papa', 'Moreau', 'Catherine', 'l\'Elan vert', '24 cm', 'Jeunesse'),
('978-2-01-393119-9', 'Princes et princesses', '', '', 'Gautier-Languereau', '26 cm', 'Jeunesse'),
('978-2-7560-0630-7', 'L\'âme du Kyudo', 'Hirata', 'Hiroshi', 'Delcourt-Akata', '21 cm', 'Adulte'),
('978-2-915492-63-7', 'Opération Mort', 'Mizuki', 'Shigeru', 'Ed. Cornélius', '24 cm', 'Adulte'),
('978-2-8129-0463-9', 'temps d\'orage (Les)', 'Douriaux', 'Hugues', 'Editions De Borée', '18 cm', 'Adulte'),
('978-2-278-06476-2', 'La moufle', 'Desnouveaux', 'Florence', 'Didier jeunesse', '23 cm', 'Jeunesse'),
('978-2-8129-0547-6', 'clos des grognards (Le)', 'Douriaux', 'Hugues', 'Editions De Borée', '18 cm', 'Adulte'),
('978-2-917516-10-2', 'Lucie et les lucioles', 'Moine', 'Arnaud', 'Ed. Chocolat ! jeunesse', '27 cm', 'Jeunesse'),
('978-2-8098-1549-8', 'Arnaud Montebourg', ' président', 'Spitz', '', '1 vol. (245 p.)', 'Livre(s)'),
('978-2-87142-683-7', 'La renarde', 'Bourguignon', 'Laurence', 'Mijade', '29 cm', 'Jeunesse'),
('2-9523794-4-0', 'Emergences', 'Lièvre', 'Henri', 'Académie de Mâcon', '24 cm', 'Adulte'),
('978-2-211-08546-5', 'Annie du lac', 'Crowther', 'Kitty', 'Pastel', '25 cm', 'Jeunesse'),
('978-2-296-12310-6', 'Une autre manière', 'Vaillant', 'Anne', 'Harmattan (L\')', '22 cm', 'Adulte'),
('978-2-7338-1203-7', 'Pinocchio', 'Collodi', 'Carlo', 'Auzou', '31 cm', 'Jeunesse'),
('978-2-914686-34-1', 'voyage de petit nuage (Le)', 'Robillard', 'Jean-Marie', 'le Buveur d\'encre', '31 x 31 cm', 'Jeunesse'),
('978-2-84196-752-0', 'La princesse des neiges', 'Galliot', 'Lucile', 'Ed. Quatre fleuves', '31 cm', 'Jeunesse'),
('978-2-8126-0056-2', 'Miroir-miroir', 'Lee', 'Suzy', 'Rouergue', '31 cm', 'Jeunesse');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
