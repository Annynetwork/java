mkdir springbootjava
cd springbootjava
curl https://start.spring.io/starter.tgz -d dependencies=webflux,actuator | tar -xzvf -
./mvnw spring-boot:build-image
./gradlew bootBuildImage
docker run -p 8080:8080 demo:0.0.1-SNAPSHOT

