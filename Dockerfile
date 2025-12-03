FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY target/MyWebApp/*.war app.war
ENTRYPOINT ["java","-war","app.war"]
