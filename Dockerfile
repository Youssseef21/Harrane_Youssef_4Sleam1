# Multi-stage build for Java Maven application

# ---------------------------
# Stage 1: Build
# ---------------------------
FROM maven:3.9-eclipse-temurin-17 AS build

# Définir le répertoire de travail
WORKDIR /app

# Copier le pom et le code source
COPY pom.xml .
COPY src ./src

# Construire le projet et générer le JAR exécutable (shade)
RUN mvn clean package -DskipTests

# ---------------------------
# Stage 2: Runtime
# ---------------------------
FROM eclipse-temurin:17-jre-alpine

# Définir le répertoire de travail
WORKDIR /app

# Copier le JAR "shaded" depuis l'étape de build
COPY --from=build /app/target/maven-sample-1.0-SNAPSHOT-shaded.jar app.jar

# Exposer le port de l'application
EXPOSE 8080

# Définir le point d'entrée
ENTRYPOINT ["java", "-jar", "app.jar"]
