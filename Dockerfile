FROM openjdk:8u181-jdk-stretch

RUN curl http://mirror.cc.columbia.edu/pub/software/eclipse/technology/epp/downloads/release/neon/1/eclipse-jee-neon-1-linux-gtk-x86_64.tar.gz | tar xz

ENTRYPOINT ./eclipse/eclipse
