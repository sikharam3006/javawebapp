FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY MyWebApp/target/*.war app.war
ENTRYPOINT ["java","-war","app.war"]
