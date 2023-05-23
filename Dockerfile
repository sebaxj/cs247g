FROM eclipse-temurin:17-alpine

VOLUME ["/server"]
WORKDIR /server

COPY server/ .

EXPOSE 25565/udp
EXPOSE 25565/tcp

EXPOSE 25575/tcp

ENTRYPOINT ["java", "-Xms1G", "-Xmx5G", "-XX:+UseG1GC", "-Dfile.encoding=UTF-8", "-jar", "spigot-1.19.4.jar", "nogui"]
