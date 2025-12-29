#Build a JAR File
FROM maven:3.9.6-eclipse-temurin-17 AS stage1
WORKDIR /home/app
COPY . . 
RUN mvn clean package -DskipTests

#Create an Image
FROM eclipse-temurin:17-jre
EXPOSE 8080
COPY --from=stage1 /home/app/target/*.jar app.jar
ENTRYPOINT ["java", "-jar", "app.jar"]