FROM tomcat:9.0-jdk17-temurin

# Remove default ROOT application (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copy your WAR to Tomcat's webapps folder
COPY MyWebApp/target/*.war /usr/local/tomcat/webapps/MyWebApp.war

EXPOSE 8080

CMD ["catalina.sh", "run"]
