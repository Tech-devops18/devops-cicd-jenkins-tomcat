# Use official Tomcat base image
FROM tomcat:9.0

# Maintainer info (optional)
LABEL maintainer="irfancareers18@gmail.com"

# Remove default webapps (optional)
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into the webapps directory
# Replace 'your-app.war' with your actual WAR file name
COPY /opt/docker/webapp.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
