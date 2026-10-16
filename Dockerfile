# Dockerfile de l'application Flask - à compléter
#
# 1. Partir d'une image Python 3.12 légère       (FROM)
# 2. Se placer dans le dossier /app              (WORKDIR)
# 3. Copier requirements.txt puis installer les dépendances avec pip  (COPY, RUN)
# 4. Copier le code de l'application (main.py)   (COPY)
# 5. Indiquer le port utilisé par l'application : 4000  (EXPOSE)
# 6. Lancer l'application : python main.py       (CMD)
# 1. Image de base avec Python
FROM python:3.10-slim

# 2. Repertoire de travail dans le conteneur
WORKDIR /app

# 3. Copie du fichier de dependances et installation
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 4. Copie de tout le code de l'application
COPY . .

# 5. Exposition du port 4000
EXPOSE 4000

# 6. Commande de lancement de l'application
CMD ["python", "main.py"]