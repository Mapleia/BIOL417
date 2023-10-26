FROM eclipse-temurin:11

WORKDIR /usr/src/app

RUN curl http://goby.compbio.cs.cmu.edu/Notung/Notung-2.9.1.5.zip --output Notung-2.9.1.5.zip
RUN unzip Notung-2.9.1.5.zip
WORKDIR /usr/src/app/Notung-2.9.1.5

ENTRYPOINT [ "java", "-jar", "Notung-2.9.1.5.jar"]