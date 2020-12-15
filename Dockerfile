FROM openjdk:8
ADD target/*.jar config-server.jar
EXPOSE 8888
ENTRYPOINT ["java", "-jar", "config-server.jar"]
RUN apt-get update && apt-get install -y \
curl
CMD /bin/bash