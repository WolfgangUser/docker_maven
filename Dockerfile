FROM maven:3.3-jdk-8

WORKDIR /app

COPY pom.xml ./
RUN mvn dependency:resolve

COPY src ./src

RUN mvn package

CMD ["mvn", "clean", "install"]