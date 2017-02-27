FROM rocker/hadleyverse
RUN apt-get -y update && apt-get install -y fortunes
