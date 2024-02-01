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
      - JS Pur / React
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
    - Page d'inscription : /sign-in : GET
      - Pour la selection Associations : /sign-in/asso : POST
      - Pour la selection bénévole : /sign-in/benevole : POST
    - Page de connexion : /login : POST
    - Tableau de bord (association) : /dashboard/association : GET
    - Tableau de bord (famille d’accueil) : /dashboard/foster : GET
    - page de recherche d'animaux : /search : GET
      - Page d’un animal : /animals/:id : GET
         - Page d’une Association : /association/:id : GET
    - À propos : /about : GET

  - La liste des User stories
    
    - En tant que Visiteurs : 
      - je veux pouvoir m'inscrire sur la plateforme en tant que bénévole avoir un compte et accueillir temporairement des animaux (depuis la page d'accueil).
      - je veux pouvoir m'inscrire sur la plateforme en tant qu'association pour proposé des animaux à l'adoption temporaire. (depuis la page d'accueil) 
      - je veux pouvoir rechercher des animaux à accueillir selon différents critères par curiosité (depuis la page d'accueil).
      - je veux pouvoir consulter les détails d'un animal et d'une association (depuis la page de l'animal ou de la page de l'association).
    - En tant qu'utilisateur connecté :
      - je veux pouvoir me déconnecter (depuis la page d'accueil).
      - En tant que bénévole
      - - je veux pouvoir me connecter à mon compte pour accueillir temporairement des animaux (depuis la page d'accueil).
        - je veux pouvoir rechercher des animaux pour consulter la fiche d'un animal (depuis la page d'accueil).
          - je veux pouvoir Consulter la fiche d'un animal pour me positionner pour un animal (depuis la page de résultats de recherche).
            - je veux pouvoir me positionner pour un animal pour accueillir temporairement l'animal (depuis la page fiche de l'animal).
        - je veux pouvoir consulter le détail d'une association pour avoir plus d'informations sur l'association (depuis la page fiche de l'animal).
        - je veux pouvoir accéder à mon tableau de bord pour ajouter, modifier, ou supprimé mes informations, pour accéder au status de mes demandes (depuis la page d'accueil).
        - je veux pouvoir modifier mon profil pour signaler tout changement. (depuis la page tableau de bord).
        - je veux pouvoir accéder au statut de mes demandes pour être informé des acceptations ou des refus de mes demandes.(depuis la page tableau de bord).
          - Je veux pouvoir ajouter/modifier/supprimer mes antécédents pour informer les associations de mes précédents accueils. ( depuis la page tableau de bord).
          - je veux pouvoir indiqué sur mon profil si je suis disponible ou pas pour informé les associations de mon statut (depuis la page tableau de bord).
  
      - En tant qu'association
      - je veux pouvoir me connecter à mon compte pour proposé des animaux à l'adoption temporaire. (depuis la page d'accueil)
        - je veux pouvoir rechercher des animaux pour vérifier si, mes ajouts d'animaux on bien été faits. (depuis la page d'accueil).
          - je veux pouvoir consulter la fiche d'un animal pour vérifier qu'il n'y est pas d'erreurs. (depuis la page de résultat de recherche).
        - je veux pouvoir consulter le détail de l'association pour vérifier qu'il n'y est pas d'erreurs.(depuis la page fiche animal).
        - je veux pouvoir accéder à mon tableau de bord pour ajouter, modifier, ou supprimé mes informations, pour accéder au status de mes demandes, ...  (depuis la page tableau de bord).
          - je veux pouvoir modifier mon profil pour signaler tout changement. (depuis la page tableau de bord).
         - je veux pouvoir ajouter/modifier / supprimer un animal pour signaler un nouvel arrivant dans l'association, pour modifier les informations, car l'animal est adopté. (depuis la page tableau de bord).
          - je veux pouvoir visualiser les demandes pour confirmer ou refuser la demande d'un bénévole (depuis la page tableau de bord).
             - je veux pouvoir valider/refuser une demande si l'animal libre ou s'il est déjà placé. (depuis la page tableau de bord)
          - je veux pouvoir visualiser l'historique des demandes d'accueil traitées pour avoir une trace écrite (depuis la page tableau de bord sous onglet "historique").

![ARB](/ARB-PFC.png)

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




## MCD

  - Entités :
    - Bénévole : utilisateurs qui s'inscrivent sur la plateforme pour offrir leur aide aux associations
    - Association : organisation de protection animale qui utilise la plateforme pour trouver des familles d'accueil temporaires pour les animaux.
    - Animal : Les animaux sont les êtres nécessitant une attention
    - Historique
    - Antecedent
    - Disponibilite

  - Attributs : 
    - Bénévole :
      - ID
      - Nom
      - Prénom
      - email
      - Téléphone
      - Date de naissance
      - Mot_de_passe
      - Adresse
      - Autres informations de profil (disponibilité, préférences, etc.)

    - Association
      - ID
      - Nom
      - email
      - Contact (Nom / Prénom)
      - Téléphone
      - SIRET
      - Mot_de_passe
      - Adresse
      - Autres informations de profil (domaine d'intervention, localisation, etc.)

    - Animal
      - ID
      - Nom_animal
      - Espèce
      - Race
      - Date De Naissance
      - Statut ( adoptable, en cours d'adoption, etc.)
    
     

