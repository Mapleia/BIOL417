FROM eclipse-temurin:11

RUN apt-get update -y && \
    apt-get install -y unzip wget

ENV GH_USER="MesquiteProject"
ENV GH_REPO="MesquiteCore"
ENV GH_BRANCH="v3.81"
ENV GH_BUILD="955"

WORKDIR /usr/src/app


RUN wget "https://github.com/${GH_USER}/${GH_REPO}/releases/download/${GH_BRANCH}-build${GH_BUILD}/Mesquite_${GH_BRANCH}_Linux.tgz" \
  -O "Mesquite_${GH_BRANCH}_Linux.tgz"
RUN unzip "Mesquite_${GH_BRANCH}_Linux.tgz"
RUN rm "Mesquite_${GH_BRANCH}_Linux.tgz"
RUN mv "Mesquite_${GH_BRANCH}_Linux/Mesquite_Folder" "./"

CMD [/bin/bash]