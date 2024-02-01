# Utiliza una imagen base oficial de Java
FROM openjdk:17-jdk-slim as build

# Configura el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia el archivo de construcción de tu proyecto al contenedor
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

# Construye la aplicación utilizando Maven
RUN ./mvnw package -DskipTests

# Empaqueta la aplicación
FROM openjdk:17-jdk-slim
COPY --from=build /app/target/*.jar app.jar

# Expone el puerto en el que se ejecutará la aplicación
EXPOSE 8080

# Ejecuta la aplicación Java
ENTRYPOINT ["java","-jar","/app.jar"]
