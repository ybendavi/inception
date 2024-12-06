# Inception

## Description

Ce projet vise à approfondir les connaissances en **virtualisation** à l’aide de **Docker**. Vous devrez configurer et orchestrer plusieurs services au sein d’une infrastructure conteneurisée.

## Compétences acquises

### 1. Virtualisation et Conteneurisation
- Utilisation de **Docker** pour créer et gérer des conteneurs.
- Configuration de services avec **docker-compose**.
- Création de **Dockerfiles** pour chaque service.

### 2. Mise en place d'une infrastructure multi-services
- Création d'une mini-infrastructure composée des services suivants :
  - **NGINX** avec TLSv1.2 ou TLSv1.3 comme point d'entrée unique.
  - **WordPress** avec php-fpm.
  - **MariaDB** comme base de données pour WordPress.
  - **Volumes** pour la base de données et les fichiers du site WordPress.
  - **Réseau Docker** pour connecter les conteneurs.

### 3. Meilleures pratiques de sécurité
- Configuration des conteneurs sans mot de passe visible.
- Utilisation de variables d’environnement via un fichier `.env`.
- Recommandation de l’utilisation de **Docker Secrets** pour les informations sensibles.
- Interdiction des hacks comme `tail -f` ou `while true` dans les scripts de démarrage.

### 4. Configuration réseau
- Association d’un nom de domaine personnalisé (`login.42.fr`) pointant vers l’adresse IP locale.
- Configuration des conteneurs pour qu’ils redémarrent automatiquement en cas de crash.

## Partie Bonus

Pour enrichir votre infrastructure, vous pouvez ajouter :
- **Redis Cache** pour optimiser WordPress.
- Un serveur FTP pour accéder au volume des fichiers WordPress.
- Un site statique (autre que PHP) comme un site vitrine.
- **Adminer** pour gérer la base de données.
- Tout autre service pertinent que vous pourrez justifier.

## Structure des fichiers

Votre dépôt devra contenir :
- Un répertoire `srcs/` pour tous les fichiers nécessaires.
- Un `Makefile` pour automatiser la mise en place de l’infrastructure.
- Un fichier `docker-compose.yml` pour orchestrer les services.
- Un fichier `.env` pour stocker les variables d’environnement.

Exemple de structure attendue :
```plaintext
.
├── Makefile
├── srcs/
│   ├── docker-compose.yml
│   ├── .env
│   ├── requirements/
│   │   ├── mariadb/
│   │   ├── nginx/
│   │   ├── wordpress/
│   │   ├── ...
│   ├── secrets/
