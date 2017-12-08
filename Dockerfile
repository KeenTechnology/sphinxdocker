FROM phusion/baseimage

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN apt-get update
RUN add-apt-repository -y ppa:builds/sphinxsearch-rel22
RUN add-apt-repository -y ppa:ondrej/php
RUN apt-get update
RUN apt-get -y install sphinxsearch
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get -y install php5.6-cli php5.6-readline
RUN mkdir /var/lib/sphinx
RUN mkdir /var/lib/sphinx/data
RUN mkdir /var/log/sphinx
RUN mkdir /var/run/sphinx
ADD indexandsearch.sh /
RUN chmod a+x indexandsearch.sh
ADD searchd.sh /
RUN chmod a+x searchd.sh
ADD lordsearchd.sh /
RUN chmod a+x lordsearchd.sh
