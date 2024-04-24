(english below)

# GuitarPick
<img src="/app/assets/images/screenshots/banner.png" alt="banner">
Guitar Pick est un site de location de guitares, développé sur le modèle d'AirBnb. L'application est disponible uniquement en anglais.

<br/>
<br/>

## Contexte de développement 💻🤝
Il s'agit d'un projet éducatif développé en équipe lors du bootcamp "Développement Web" à Le Wagon. 🚋

<br/>
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
<br/>


## Utilisation

Au démarrage de l'application, l'utilisateur arrive sur la page d'accueil qui présente une carte avec les guitares disponibles sur Paris. Les données intiales générées par la commande `rails db:seed` contiennent uniquement des produits basés en région parisienne. Libre à vous de modifier leur localisation (**address**).
Sur cette page, l'utilisateur peut :
- se connecter grâce au bouton **Login**
- se rendre sur la page où toutes les guitares sont visibles grâce au bouton **Browse Guitars**

<img src="/app/assets/images/screenshots/homePage.png" alt="page d'accueil">

<br/>

Sur la page `/login`, l'utilisateur peut centrer son email et son mot de passe pour se connecter, cliquer sur le lien `Forgot your password` et suivre la procédure ou cliquer sur le lien`Sign up` et remplir le formulaire pour se créer un compte.
Pour tester l'application, vous pouvez utiliser les comptes "test" créés lors de la génération des seeds. Par exemple : `email : mar@gmail.com` et `mot de passe : 123456`.

Sur la page `/guitars`, l'utilisateur peut parcourir toutes les guitares disponibles, les visualier sur une carte et rechercher une guitare par son nom, son code postal ou son adresse.

<img src="/app/assets/images/screenshots/allGuitars.png" alt="toutes les guitares">
<img src="/app/assets/images/screenshots/searchGuitars.png" alt="rechercher une guitare">

<br/>

Sur la page `/guitars/{index}`, l'utilisateur peut voir les détails à propos d'une guitare et sélectionner les dates de début et de fin de la réservation. Pour faire une demande de réservation, l'utilisateur doit être connecté. Lorsque l'utilisateur fait une demande de réservation, le propriétaire de la guitare pourra accepter ou décliner la demande. Une réservation peut avoir plusieurs statuts : `pending`, `accepted`, `declined`.

<img src="/app/assets/images/screenshots/guitarDetails.png" alt="page de détails d'une guitare">

<br/>

Sur cette même page, si l'utilisateur est propriétaire de la guitare, deux boutons apparraissent : **Edit guitar** et **Delete guitar** qui vont permettent à l'utilisateur de modifier les détails d'une guitare ou de supprimer cette dernière.

<img src="/app/assets/images/screenshots/editGuitar.png" alt="page de modification d'une guitare">

<br/>

Sur la page `/dashboard`, l'utilisateur peut visualiser:
- la liste des guitares qu'il mis à la location
- les réservations qui sont à venir
- l'ensemble des réservations (`pending`, `accepted`, `declined`) qui ont été faites sur ses guitares (partie **Owner**)
- l'ensemble des réservations (`pending`, `accepted`, `declined`) qu'il a faites en tant que locataire (partie **Renter**)

<img src="/app/assets/images/screenshots/dashboard.png" alt="page de détails d'une guitare">
<img src="/app/assets/images/screenshots/dashboard2.png" alt="page de détails d'une guitare">


<br/>

Sur la page `/guitars/new`, l'utilisateur peut ajouter une nouvelle guitare pour la mettre à la location. Cette page est accessible depuis le dahsboard ou le menu de la barre de navigation.

<img src="/app/assets/images/screenshots/addGuitar.png" alt="page de création d'une guitare">

<br/>
<br/>

## Remarques
Le design est encore à travailler et n'est pas responsive. Il est uniquement adapté au format ordinateur.

---
---
# GuitarPick
<img src="/app/assets/images/screenshots/banner.png" alt="banner">
Guitar Pick is a guitar rental website developed based on the AirBnb model. The application is available only in English.

<br/>
<br/>

## Development Context 💻🤝
This is an educational project developed as a team during the "Web Development" bootcamp at Le Wagon. 🚋

<br/>
<br/>

## Installation and Configuration ⚙️🛠️

### System Prerequisites:
The application currently runs on:
- Ruby (version 3.1.2) 💎
- Node.js (version 16.15.1)
- PostgreSQL (version 1.1)
- Rails (version 7.0.3.1) 🛤️
- Yarn (version 1.22.19)
- Webpack (version 5.74.0)

<br/>

### Installation Steps:
1. Clone the Git repository: `git clone https://github.com/marionrobert/GUITAR_PICK.git`
2. Ensure Rails, Yarn, and Webpack are installed with the corresponding versions.
3. Create a `.env` file at the root of the project and add:
   - your Cloudinary API key following this format `CLOUDINARY_URL=YOUR_API_KEY_HERE`. The Cloudinary API is used for online image storage.
   - your Mapbox API key as follows: `MAPBOX_API_KEY=YOUR_API_KEY_HERE`. The Mapbox API is used to visualize guitars for rent on a map.
5. Run the following commands to install dependencies and set up the database:
   - `bundle install`
   - `yarn install`
   - `rails db:create db:migrate db:seed` 🌱
      - rails db:create creates the database specified in the configuration file.
      - rails db:migrate runs the saved migrations to update the database structure.
      - rails db:seed inserts initial data into the database.
6. To start the server, you have two options:
   - Open two terminals and simultaneously run the following commands: `rails server` AND `yarn build --watch`
   - Use the `dev` command to automate these steps using the `Procfile.dev` file (convenient! :bulb:)

<br/>
<br/>

## Usage

Upon starting the application, the user arrives on the homepage that displays a map with guitars available in Paris. The initial data generated by the `rails db:seed` command contains only products based in the Paris region. Feel free to modify their location (**address**).
On this page, the user can:
- log in using the **Login** button
- navigate to the page where all guitars are visible using the **Browse Guitars** button

<img src="/app/assets/images/screenshots/homePage.png" alt="home page">

<br/>

On the `/login` page, the user can enter their email and password to log in, click the `Forgot your password` link and follow the procedure, or click the `Sign up` link and fill out the form to create an account.
To test the application, you can use the "test" accounts created during seed generation. For example: `email: mar@gmail.com` and `password: 123456`.

On the `/guitars` page, the user can browse all available guitars, view them on a map, and search for a guitar by its name, postal code, or address.

<img src="/app/assets/images/screenshots/allGuitars.png" alt="all guitars">
<img src="/app/assets/images/screenshots/searchGuitars.png" alt="search guitars">

<br/>

On the `/guitars/{index}` page, the user can see details about a guitar and select start and end dates for the reservation. To make a reservation request, the user must be logged in. When the user makes a reservation request, the guitar owner can accept or decline the request. A reservation can have multiple statuses: `pending`, `accepted`, `declined`.

<img src="/app/assets/images/screenshots/guitarDetails.png" alt="guitar details page">

<br/>

On this same page, if the user is the guitar owner, two buttons appear: **Edit guitar** and **Delete guitar** which allow the user to modify guitar details or delete it.

<img src="/app/assets/images/screenshots/editGuitar.png" alt="edit guitar page">

<br/>

On the `/dashboard` page, the user can view:
- the list of guitars they have for rent
- upcoming reservations
- all reservations (`pending`, `accepted`, `declined`) made on their guitars (as an **Owner**)
- all reservations (`pending`, `accepted`, `declined`) they have made as a renter (as a **Renter**)

<img src="/app/assets/images/screenshots/dashboard.png" alt="dashboard page">
<img src="/app/assets/images/screenshots/dashboard2.png" alt="dashboard page">


<br/>

On the `/guitars/new` page, the user can add a new guitar for rent. This page is accessible from the dashboard or the navigation bar menu.

<img src="/app/assets/images/screenshots/addGuitar.png" alt="add guitar page">

<br/>
<br/>

## Notes
The design is still a work in progress and is not responsive. It is only suitable for desktop format.

