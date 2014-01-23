FROM openaustralia/morph-base
MAINTAINER Matthew Landauer <matthew@oaf.org.au>

# Special handling to install scraperwiki library
RUN git clone https://github.com/openaustralia/scraperwiki-php.git /usr/local/lib/scraperwiki
RUN cd /usr/local/lib/scraperwiki; git checkout morph_defaults
ADD php.ini /etc/php5/cli/php.ini

# TODO Install php5-geoip (which doesn't appear to be present on this version of Ubuntu)
RUN apt-get -y install php5-tidy php5-cli php5-curl php5-sqlite php5-gd php-pear re2c

# TODO This doesn't yet work because it needs the database
#RUN pecl install geoip
