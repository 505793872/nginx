#!/bin/bash

# Installing [Ubuntu-20.04] NGINX Dependencies
# PCRE – Supports regular expressions. Required by the NGINX Core and Rewrite modules.
# zlib – Supports header compression. Required by the NGINX Gzip module.
# OpenSSL – Supports the HTTPS protocol. Required by the NGINX SSL module and others.
apt install -y \
    build-essential \
    libssl-dev \
    libpcre3-dev \
    zlib1g-dev \
    libxslt1-dev \
    libgd-dev \
    libgeoip-dev \
    libperl-dev

# downloading the sources
wget https://nginx.org/download/nginx-1.18.0.tar.gz
tar zxf nginx-1.18.0.tar.gz
cd nginx-1.18.0

# Configure options are specified with the ./configure script that sets up various NGINX parameters, including paths to source and configuration files, compiler options, connection processing methods, and the list of modules. The script finishes by creating the Makefile required to compile the code and install NGINX Open Source.
./configure
--with-mail \
--with-stream \
--with-http_ssl_module \
--with-http_image_filter_module \
--with-http_xslt_module \
--with-http_geoip_module \
--with-http_perl_module

# Completing the Installation from Source
make
sudo make install
