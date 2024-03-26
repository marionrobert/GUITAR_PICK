# GuitarPick
Guitar Pick est un site de location de guitares construit sur le modèle d'AirBnb. L'application est disponible uniquement en anglais.

<br/>

## Contexte de développement 💻🤝
Il s'agit d'un projet éducatif développé en équipe lors du bootcamp "Développement Web" à Le Wagon. 🚋

<br/>

## Installation et Configuration ⚙️🛠️

### Prérequis système :
L'application tourne actuellement sur :
- Ruby (version 3.1.2) 💎
- Node.js (version 16.15.1)
- PostgreSQL (version 1.1)
- Rails (version 7.0.3.1) 🛤️
- Yarn (version 1.22.19)
- Webpack (version 5.74.0)

<br/>

### Étapes d'installation :
1. Clonez le dépôt Git : `git clone https://github.com/marionrobert/GUITAR_PICK.git`
2. Assurez-vous d'avoir Rails, Yarn et Webpack installés avec les versions correspondantes.
3. Créez un fichier `.env` à la racine du projet et ajoutez-y:
   - votre clé API Cloudinary suivant ce modèle `CLOUDINARY_URL=VOTRE_CLÉ_API_ICI`. L'API Cloudinary est utilisée pour le stockage des images en ligne
   - votre clé API Mapbox comme suit : `MAPBOX_API_KEY=VOTRE_CLÉ_API_ICI`. L'API Mapbox est utilisée pour visualiser les guitars à louer sur une carte.
5. Exécutez les commandes suivantes pour installer les dépendances et configurer la base de données :
   - `bundle install`
   - `yarn install`
   - `rails db:create db:migrate db:seed` 🌱
      - rails db:create crée la base de données spécifiée dans le fichier de configuration.
      - rails db:migrate exécute les migrations enregistrées pour mettre à jour la structure de la base de données.
      - rails db:seed insère des données initiales dans la base de données.
6. Pour démarrer le serveur, vous avez deux options :
   - Ouvrez deux terminaux et exécutez simultanément les commandes suivantes : `rails server` ET `yarn build --watch`
   - Utilisez la commande `dev` pour automatiser ces étapes grâce au fichier `Procfile.dev` (pratique!  :bulb:)

<br/>


## Utilisation

Au démarrage de l'application, l'utilisateur arrive sur la page d'accueil qui présente une carte avec les guitares disponibles sur Paris. Les données intiales générées par la commande `rails db:seed` contiennent uniquement des produits basés en région parisienne. Libre à vous de modifier leur localisation (**address**).
Sur cette page, l'utilisateur peut :
- se connecter grâce au bouton **Login**
- se rendre sur la page où toutes les guitares sont visibles grâce au bouton **Browse Guitars**

Sur la page `/login`, l'utilisateur peut choisir entre entrer son email et son mot de passe pour se connecter, cliquer sur le lien `Forgot your password` et suivre la procédure ou cliquer sur `Sign up` et se créer un compte.

Sur la page `/guitars`, l'utilisateur peut parcourir toutes les guitares disponibles, les visualier sur une carte et rechercher une guitare par son nom.

Sur la page `/guitars/{index}`, l'utilisateur peut voir les détails à propos d'une guitare et sélectionner les dates de début et de fin de la réservation. Pour faire une demande de réservation, l'utilisateur doit être connecté.
Sur cette même page, si l'utilisateur est propriétaire de la guitare, deux boutons apparraissent : **Edit guitar** et **Delete guitar** qui vont permettent à l'utilisateur de modifier les détails d'une guitare ou de supprimer cette dernière.

Lorsque l'utilisateur fait une demande de réservation, le propriétaire de la guitare pourra accepter ou décliner la demande. Une réservation peut avoir plusieurs statuts : `pending`, `accepted`, `declined`.

Sur la page `/dashboard`, l'utilisateur peut visualiser:
- la liste des guitares qu'il mis à la location
- les réservations qui sont à venir
- l'ensemble des réservations (`pending`, `accepted`, `declined`) qui ont été faites sur ses guitares (partie **Owner**)
- l'ensemble des réservations (`pending`, `accepted`, `declined`) qu'il a faites en tant que locataire (partie **Renter**)

Sur la page `/guitars/new`, l'utilisateur peut ajouter une nouvelle guitare pour la mettre à la location. Cette page est accessible depuis le dahsboard ou le menu de la barre de navigation.

<br/>

## Remarques 
Le design n'est pas responsive. Il est uniquement adapté au format ordinateur.
