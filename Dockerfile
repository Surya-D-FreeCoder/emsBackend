FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copy files
COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .

# 🔥 FIX: give execute permission
RUN chmod +x mvnw

# Download dependencies
RUN ./mvnw dependency:go-offline

# Copy source
COPY src src

# Build app
RUN ./mvnw clean package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/*.jar"]
