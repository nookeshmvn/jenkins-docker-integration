# Start with a clean Tomcat server
FROM tomcat:9.0-jre17

# Remove the boring default Tomcat pages
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy our 'movie-tickets.war' into Tomcat so it can run
COPY target/movie-tickets.war /usr/local/tomcat/webapps/ROOT.war

# Open the door so we can see it on port 8080
EXPOSE 8080
