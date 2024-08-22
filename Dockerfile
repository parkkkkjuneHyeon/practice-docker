FROM eclipse-temurin:8-jre-noble
WORKDIR /app
COPY /build/libs/*-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]