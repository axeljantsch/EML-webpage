FROM ubuntu:16.04

# Install packages
RUN apt-get update -y
RUN apt install -y bibtex2html xslx2csv
RUN rm -rf /var/lib/apt/lists/*
ADD . /data
RUN sh /data/publist.sh
CMD bash
