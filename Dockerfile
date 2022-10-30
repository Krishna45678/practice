FROM ubuntu:16.04
ARG DEBIAN_FRONTEND=noninteractive
CMD bash
RUN apt-get update
RUN apt install apt-utils -y
RUN apt-get install openjdk-8-jdk -y
RUN java -version
RUN apt-get purge ca-certificates curl openssh-server -y
RUN apt-get install meld -y
RUN apt-get install curl -y
RUN apt-get install xpad -y
RUN apt-get install unrar -y
RUN apt-get install rar -y
RUN apt-get install sudo -y
RUN curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install gcc g++ make -y
RUN sudo apt-get install libxml-parser-perl -y
RUN nodejs --version
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get update && sudo apt-get install yarn
RUN yarn --version




