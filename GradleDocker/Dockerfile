FROM ubuntu:latest
WORKDIR /jmapp
EXPOSE 8080
RUN apt-get update && apt install sudo -y && apt install wget -y \
&& sudo apt install openjdk-11-jdk-headless -y \
&& JAVA_HOME='/opt/jdk-13.0.1' && PATH="$JAVA_HOME/bin:$PATH" && \
export PATH && java --version \
&& sudo apt -y install vim apt-transport-https dirmngr wget software-properties-common \
&& sudo add-apt-repository ppa:cwchien/gradle \
&& sudo apt-get update && sudo apt -y install gradle && gradle --version 


CMD gradle --version && java -jar build/libs/spring-petclinic-2.6.0.jar

