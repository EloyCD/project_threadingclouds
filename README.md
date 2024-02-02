## DEPLOYMENT PIPELINE

When we make changes in the application and push, a new image is generated with a tag related to the github commit, this tag is pasted in the deploy.yaml file, making a new push, so Argocd is automatically synchronized.