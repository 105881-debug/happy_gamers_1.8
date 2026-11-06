FROM openjdk:8-jre-slim

WORKDIR /server

RUN apt-get update && apt-get install -y wget && rm -rf /var/lib/apt/lists/*

RUN wget -O bungeecord.jar https://ci.md-5.net/job/BungeeCord/lastSuccessfulBuild/artifact/bootstrap/target/BungeeCord.jar

EXPOSE 8080

CMD ["java", "-Xms512M", "-Xmx512M", "-jar", "bungeecord.jar"]
