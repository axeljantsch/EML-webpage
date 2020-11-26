FROM ubuntu:16.04

# Install packages
RUN apt-get update -y
RUN apt install -y bibtex2html xslx2csv
RUN rm -rf /var/lib/apt/lists/*
ADD . /data
RUN sh /data/publist.sh
RUN sh xlsx2csv /data/_data/ActivitiesOverview.xlsx /data/_data/ActivitiesOverview.csv
CMD bash
