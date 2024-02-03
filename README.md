## DEPLOYMENT PIPELINE

When we make changes in the application and push, a new image is generated with a tag related to the github commit, this tag is pasted in the deploy.yaml file, making a new push, so Argocd is automatically synchronized.

instalamos cluster con Kind
instalamos usando helm prometheus y grafana y argocd
Se confifuro la aplicación java con Sprint Boot
Se creo el Dockerfile
Se creo la pipeline de github actions
Se configuro la pipeline con argocd 



