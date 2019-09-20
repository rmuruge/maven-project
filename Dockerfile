# Preparing bower files (only have bower in dev dependencies)
FROM ubuntu

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean
RUN apt-get -y install default-jre
RUN mkdir /app
RUN mkdir /app/maven-project
WORKDIR /app/maven-project

COPY target/maven-project-1.0-SNAPSHOT.jar /app/maven-project

CMD ["/bin/bash", "java -cp maven-project-1.0-SNAPSHOT.jar com.mycompany.app.App"]


