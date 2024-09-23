FROM openjdk:8-jre-alpine
LABEL maintainer="598165434@qq.com"
COPY target/*.jar /app.jar
RUN apk add -U tzdata;\
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime;\
echo 'Asia/Shanghai'>/etc/timezone;\
touch /app.jar;
ENV JAVA_OPTS=""
ENV PARAMS=""
EXPOSE 8081
ENTRYPOINT ["sh","-c","java -Djava.security.egd=file:/dev/./urandom $JAVA_OPTS -jar/app.jar $PARAMS"]