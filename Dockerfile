FROM ubuntu:latest
WORKDIR /jmapp
EXPOSE 8080
RUN apt-get update && apt install sudo -y && apt install wget -y \
&& sudo apt install openjdk-11-jdk-headless -y \
&& JAVA_HOME='/opt/jdk-13.0.1' && PATH="$JAVA_HOME/bin:$PATH" && \
export PATH && java --version \
&& sudo apt install maven -y && mvn -version

CMD mvn --version && java -jar /target/*.jar
