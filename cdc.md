# Cahier des charges

Logo

Titre : Pet Foster Connect : pour les amoureux des animaux

## Présentation du projet
L'adoption d'animaux de compagnie est une démarche qui demande de la réflexion, de l'engagement, et des ressources. Malheureusement, de nombreux refuges pour animaux sont saturés, et de nombreux animaux attendent désespérément un foyer chaleureux. C'est dans ce contexte que Pet Foster Connect voit le jour, en offrant une solution novatrice pour mettre en relation des associations de protection animale avec des individus prêts à accueillir temporairement des animaux en détresse.
Pet Foster Connect permet à un bénévole d'accueillir des animaux en attendant leur adoption définitive.

Mettre en relation associations et bienfaiteurs : Pet Foster Connect a pour mission de créer une plateforme qui permet aux associations de protection animale de trouver rapidement des familles d'accueil pour les animaux nécessitant une attention temporaire. En facilitant cette mise en relation, nous visons à optimiser le processus d'adoption, à sauver plus de vies et à soulager la charge des refuges.

## Définition des besoins
Problèmes :

- Refuges saturés
- Animaux qui attendent un foyer
- Processus de recherche et d'inscription complexes

Objectifs:

- Offrir une solution conviviale pour les bénévoles souhaitant s'engager dans des activités liées à la protection des animaux.
- Faciliter le processus de recherche et d'inscription des bénévoles pour les associations.
- Promouvoir la transparence et la confiance entre les bénévoles et les associations.

## Briefs clients (voir document fournit)

## Les fonctionnalités du projet (spécifications fonctionnelles)
- MVP (à voir)
  - Étapes
    - page d'accueil avec les liens # vers toutes les autres pages
      - Numéro de téléphone et adresse de Pet Foster Connect
      - Liste des associations disponibles (adresse / téléphone)
    - Formulaire d'inscription
      - pour les associations et pour les bénévoles
       ( Collecte d'informations telles que le nom, l'adresse e-mail, le numéro de téléphone, et la création de mot de passe)
    - Page de connexion
      - Formulaire de connexion pour tous les utilisateurs (associations ou bénévoles)
    - Tableau de bord (famille d'accueil)
      - Création / modification de profil détaillé.
        - nom / prénom
        - adresse
        - email
        - téléphone
      - Affichage du statut des demandes d'accueil.
    - Tableau de bord (association)
      - Création - modification du profil détaillé.
      - Gestion des animaux à accueillir
        - ajout d'un animal -> renvoie à la page d'un animal
        - modification d'un animal -> renvoie à la page d'un animal
        - suppression d'un animal
      - Gestion des demandes d'accueil
        - accepter / refuser une demande
        - historique
    - Page de recherche d'animaux
      - moteur de recherche avancé
        - affichage des animaux adoptables
    - Page d'un animal
      - détails de l'animal
        - espèce, âge, race, infos diverses ...
        - possibilité de se positionner sur l'animal
    - Page d'une association
      - détails de l'association
      - liste des animaux disponibles

  - Les évolutions potentielles
    - Utilisateurs et associations :
        - Intégration d'un système de messagerie interne entre eux
    - Utilisateurs :
        - Possibilité de créer une liste de favoris pour les animaux
        - Système de notifications pour les informer des mises à jour sur leurs demandes ou sur les animaux disponibles
        - Intégration d'un système de géolocalisation pour trouver des animaux à proximité

  -  La liste des technologies utilisées pour le projet (spécifications techniques)
    - Git pour le versionning
    - Côté back
      - Node JS
      - Express
      - Postgres
      - Active Record / Sequilize
      - bcrypt (crypter les mots de passe)
      - Slugify
      - SASS
    - Côté front
      - HTML
      - CSS
      - JS Pur / React / VUE JS
    - Gestion du RGPD

  - La définition de la cible du projet
    - associations
    - particuliers tout public
      - personnes âgées
      - personnes à mobilité réduite
      - personnes mal voyantes
        - adapté le site aux lecteurs d'écran (NVDA ...)

  - Les naviagateurs compatibles
    - Google Chrome
    - Mozilla Firefox
    - Safari
    - Microsoft Edge
    - ...

  - L'arborescence de l'application
    - Accueil (non connecté)
      - Page d'inscription
      - Page de connexion
      - Page de recherche d'animaux
      - Pages individuelles pour les animaux et les associations
    - Accueil (connecté)
      - Page déconnexion
      - Tableau de bord pour les familles d'accueil
      - Tableau de bord pour les associations
      - Page de recherche d'animaux
      - Pages individuelles pour les animaux et les associations
      -  À propos 
      
  - La liste des routes prévues
    - Acceuil : /
    - Page d'inscription : /sign-in
    - Page de connexion : /login
    - Tableau de bord (association) : /dashboard/association
    - Tableau de bord (famille d’accueil) : /dashboard/foster
    - page de recherche d'animaux : /search
    - Page d’un animal : /animals/:id
    - Page d’une Association : /association/:id
    - À propos : /about

  - La liste des User stories 
    - En tant que Visiteurs : 
      - je veux pouvoir m'inscrire sur la plateforme en tant que bénévole ou association (depuis la page d'accueil).
      - je veux pouvoir me connecter à mon compte (depuis la page d'accueil).
      - je veux pouvoir rechercher des animaux à accueillir selon différents critères (depuis la page d'accueil).
      - je veux pouvoir consulter les détails d'un animal et d'une association (depuis la page de l'animal ou de la page de l'association).
    - En tant qu'utilisateur connecté :
      - je veux pouvoir me déconnecter (depuis la page d'accueil).
      - En tant que bénévole
        - je veux pouvoir rechercher des animaux (depuis la page d'accueil).
          - je veux pouvoir Consulter la fiche d'un animal (depuis la page de résultats de recherche).
            - je veux pouvoir me positionner pour un animal (depuis la page de résultatsde recherche).
        - je veux pouvoir consulter le détail d'une association (depuis la page d'accueil).
        - je veux pouvoir accéder à mon tableau de bord (depuis la page d'accueil).
          - je veux pouvoir modifier mon profil (depuis la page tableau de bord).
          - je veux pouvoir accéder au status de mes demandes (depuis la page tableau de bord).
        - je veux pouvoir me positionner sur un animal (depuis la page détaillée de l'animal).
      - En tant qu'association
        - je veux pouvoir rechercher des animaux (depuis la page d'accueil).
          - je veux pouvoir Consulter la fiche d'un animal (depuis la page de résultat de recherche).
        - je veux pouvoir consulter le détail d'une association (depuis la page d'accueil).
        - je veux pouvoir accéder à mon tableau de bord (depuis la page tableau de bord).
          - je veux pouvoir modifier mon profil (depuis la page tableau de bord).
          - je veux pouvoir gérer les animaux à accueillir (depuis la page tableau de bord).
            - je veux pouvoir ajouter / modifier / supprimer un animal (depuis la page tableau de bord).
          - je veux pouvoir visualiser les demandes (depuis la page tableau de bord).
            - je veux pouvoir valider / refuser une demande (depuis la page tableau de bord)
          - je veux pouvoir visualiser l'historique des demandes d'accueil traitées (depuis la page tableau de bord sous onglet "historique").

  - La liste des rôles de chacun
    - Product Owner : Priscilla
    - Scrum Master :  Nadj, Priscilla
    - Lead dev : Nadj
    - Référents techniques : git : Adrian
    - Référents techniques : techno : Adrian, Yolanda, 



# Le CDC : contenu
- La présentation du projet
- La définition des besoins (problèmes auxquels répond le projet) et des objectifs (solutions qu'apporte le projet) du projet
- Les briefs clients qui vous ont été fournis sont déjà bien détaillés, ça constituera une base parfaite 😉
- Les fonctionnalités du projet (spécifications fonctionnelles)
  - Le MVP (Minimum Viable Product) : image
    - Le projet va faire l'objet de plusieurs étapes : l'idée c'est qu'à chaque étape le produit fonctionne, même si ce n'est pas avec toutes les fonctionnalités qui étaient prévues
    - Il faut se poser la question : pour que mon projet marche, est-ce que telle fonctionnalité doit marcher (MVP) ou être une fonctionnalité annexe ?
  - Les évolutions potentielles (ce qui ne sera pas terminé) : tout ce qui est prévu mais ne fait pas partie du MVP
- La liste des technologies utilisées pour le projet (spécifications techniques)
- La définition de la cible du projet (le public visé) : ça permettra entre autres choses d'anticiper certaines contraintes visuelles/ergonomiques/techniques
- Les navigateurs compatibles
- L'arborescence de l'application (le chemin de l'utilisateur)
- La liste des routes prévues
- La liste des User stories : micro-scénarios, en tant que tel utilisateur, je dois pouvoir effectuer telle action depuis tel endroit (chaque action sera redécoupée en différentes fonctionnalités)
- La liste des rôles de chacun
