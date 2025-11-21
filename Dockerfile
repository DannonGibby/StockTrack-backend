# ---------- Stage 1: Build the JAR ----------
FROM eclipse-temurin:17-jdk as build

WORKDIR /app

# Copy Maven wrapper and project files
COPY mvnw .
COPY .mvn ./.mvn
COPY pom.xml .
COPY src ./src

# Make mvnw executable (Render/Linux requirement)
RUN chmod +x mvnw

# Build the application (skip tests for faster builds)
RUN ./mvnw -q -DskipTests package

# ---------- Stage 2: Run the app ----------
FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy the built JAR from the build stage
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
