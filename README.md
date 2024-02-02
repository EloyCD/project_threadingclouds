## PIPELINE DE DESPLIEGUE

Al realizar cambios en la aplicación y hacer push, se genera una nueva imagen con un tag relacionado al commit de github, ese tag lo pegamos en el fichero deploy.yaml, relizando un nuevo push, por lo cual Argocd se sincroniza automáticamente.