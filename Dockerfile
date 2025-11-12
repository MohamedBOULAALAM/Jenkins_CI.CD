# Fichier: Dockerfile

# Étape 1: L'image de base
# Nous utilisons une image Nginx officielle et très légère
FROM nginx:alpine

# Étape 2: Copier notre application
# Copie notre index.html dans le répertoire par défaut de Nginx
COPY index.html /usr/share/nginx/html/index.html

# Étape 3: Exposer le port (informatif)
EXPOSE 80