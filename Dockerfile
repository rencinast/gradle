FROM openjdk:8-jre-slim

EXPOSE 8080

COPY build/libs/*.jar /jenkins/jenkisn_home/workspace/epositorio_de_github_gradle_main/complete/gradle/wrapper/gradle-wrapper.jar

ENTRYPOINT ["java", "-XX:+UnlockExperimentalVMOptions", "-XX:+UseCGroupMemoryLimitForHeap", "-Djava.security.egd=file:/dev/./urandom","-jar","/jenkins/jenkisn_home/workspace/epositorio_de_github_gradle_main/complete/gradle/wrapper/gradle-wrapper.jar"]

