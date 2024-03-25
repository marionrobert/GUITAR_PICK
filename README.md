# GuitarPick

Descrition à venir 

L'application est disponible uniquement en anglais.

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
1. Clonez le dépôt Git : `git clone https://github.com/marionrobert/synopsix-940.git`
2. Assurez-vous d'avoir Rails, Yarn et Webpack installés avec les versions correspondantes.
3. Créez un fichier `.env` à la racine du projet et ajoutez votre clé API Cloudinary : `CLOUDINARY_URL=VOTRE_CLÉ_API_ICI`
4. Exécutez les commandes suivantes pour installer les dépendances et configurer la base de données :
   - `bundle install`
   - `yarn install`
   - `rails db:create db:migrate db:seeds`
5. Pour démarrer le serveur, vous avez deux options :
   - Ouvrez deux terminaux et exécutez simultanément les commandes suivantes : `rails server` ET `yarn build --watch`
   - Utilisez la commande `dev` pour automatiser ces étapes grâce au fichier `Procfile.dev` (pratique!  :bulb:)
<br/>


## Utilisation

Description à venir
