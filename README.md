## DEPLOYMENT PIPELINE

When we make changes in the application and push, a new image is generated with a tag related to the github commit, this tag is pasted in the deploy.yaml file, making a new push, so Argocd is automatically synchronized.

## Overview Technical Development

**_cluster installation with Kind_**:

Kind (Kubernetes IN Docker) is a tool that facilitates running Kubernetes clusters inside Docker containers, ideal for development, testing and CI/CD. It requires Docker and optionally kubectl as prerequisites. Kind's installation is simple, and you can run kind create cluster to get a functional cluster in minutes. This allows developers and DevOps teams to work with Kubernetes efficiently and without the need for complex configurations or dedicated resources, making Kind a practical solution for local development environments and automated testing.

**_Installation using helm from Prometheus, Grafana and Argocd_**:


To install Prometheus, Grafana and ArgoCD on a Kubernetes cluster using Helm, you first need to have Helm installed on your machine. Starting with Prometheus, you can add the Prometheus Helm repository and then install it using the helm install command. Similarly, for Grafana, you add its repository and install it. ArgoCD is also installed in a similar way, by adding its Helm repository and running the installation. It is important to configure each Helm chart according to the specific needs of the environment before installation. This process allows you to quickly deploy powerful monitoring and deployment management tools in your cluster, making it easy to centrally manage applications and view metrics.


**_Configuring the Java application with Spring boot_:**

Configuring an application with Spring Boot is a streamlined process that leverages auto-configuration and convention over configuration to minimize startup effort. When creating a Spring Boot application, you start by including the necessary dependencies in the pom.xml file for Maven or build.gradle for Gradle, focusing the configuration on the application.properties or application.yml file, where you can specify properties such as the server port, database settings, and more. Spring Boot automatically configures the application components based on the added dependencies, but allows full customization through annotations in the application's main class or through specific configuration beans. This approach facilitates rapid development of robust and easily deployable applications, making Spring Boot a popular choice for modern microservices and web application development.


**_Dockerfile creation_:**

Creating a Dockerfile involves defining a series of step-by-step instructions to build a Docker image that encapsulates an application and its environment. You start by specifying a base image with FROM, followed by setting up the environment with instructions such as ENV for environment variables and RUN to execute commands that install dependencies. You use COPY or ADD to move files from the local system to the container. WORKDIR sets the working directory for the instructions that follow. EXPOSE informs Docker which ports the application will use. CMD or ENTRYPOINT defines the default command to be executed when the container is started. This process allows you to package applications efficiently, ensuring consistency between development, test and production environments, simplifying deployment and application scalability.


**_Creation of Github actions pipeline_**:

Creating a pipeline with GitHub Actions involves defining workflows in YAML files within the .github/workflows directory of your repository. Each workflow specifies a series of jobs that run automatically on certain events, such as push or pull requests. You start with the name declaration for your workflow and use the on event to define when it fires. Jobs within a workflow are composed of steps that can execute reusable commands, scripts or actions created by the community. For example, you can set up a pipeline to automate testing, packaging, and deployment of applications each time the main branch is committed. This tool provides a powerful and flexible way to automate the software development lifecycle directly from GitHub, facilitating continuous integration and delivery (CI/CD) without the need for external services.


**_Deployment Pipeline with argoCD_**

When we make changes in the application and push, a new image is generated with a tag related to the github commit, this tag is pasted in the deploy.yaml file, making a new push, so Argocd is automatically synchronized.



















