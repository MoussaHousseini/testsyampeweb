FROM s390x/adoptopenjdk:11-jre-hotspot

RUN mkdir /opt/app

COPY spminfimsweb-0.0.1-SNAPSHOT.jar /opt/app

EXPOSE 8080

ENV EUREKA_CLIENT_SERVICE_URL_DEFAULTZONE=http://admin:s4wP577AnD@172.31.31.203:8761/eureka

ENV SPRING_CLOUD_CONFIG_URI=http://admin:s4wP577AnD@172.31.31.203:8761/config

ENV SPRING_PROFILES_ACTIVE=prod

CMD ["java", "-jar", "/opt/app/spminfimsweb-0.0.1-SNAPSHOT.jar"]