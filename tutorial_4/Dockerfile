FROM python:2.7-slim

RUN python -m pip install --upgrade pip

RUN apt-get update && apt-get install -y unzip wget
WORKDIR /app

ENV GH_USER="brettc"
ENV GH_REPO="partitionfinder"
ENV GH_BRANCH="v2.1.1"

RUN wget https://github.com/${GH_USER}/${GH_REPO}/archive/refs/tags/${GH_BRANCH}.zip \
  -O "${GH_REPO}-${GH_BRANCH}.zip" && \
  unzip ./"${GH_REPO}-${GH_BRANCH}.zip" && \
  rm ./"${GH_REPO}-${GH_BRANCH}.zip"

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

CMD ["/bin/bash"]