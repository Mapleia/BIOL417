# openjdk but supported by eclipse
FROM eclipse-temurin:11

WORKDIR /usr/src/app

# download the jar
RUN curl http://goby.compbio.cs.cmu.edu/Notung/Notung-2.9.1.5.zip --output Notung-2.9.1.5.zip

# install unzip
RUN apt-get update -y && \
    apt-get install -y unzip

# unzip the jar
RUN unzip Notung-2.9.1.5.zip

CMD [/bin/bash]