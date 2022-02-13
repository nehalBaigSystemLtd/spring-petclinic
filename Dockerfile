FROM ubuntu:latest 
WORKDIR /jmapp
EXPOSE 8080
RUN apt-get update && apt install sudo -y && apt install wget -y \
&& sudo apt install openjdk-11-jdk-headless -y \
&& JAVA_HOME='/opt/jdk-13.0.1' && PATH="$JAVA_HOME/bin:$PATH" && \
export PATH && java --version \
&& wget https://mirrors.estointernet.in/apache/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz \
&& tar -xvf apache-maven-3.6.3-bin.tar.gz && mv apache-maven-3.6.3 /opt/ \
&& M2_HOME='/opt/apache-maven-3.6.3' && PATH="$M2_HOME/bin:$PATH" \
&& export PATH && mvn -version
RUN gedit ~/.bashrc
RUN ls -lat && mvn -version
COPY . /jmapp

RUN ls -lat && mvn -version 
