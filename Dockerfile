FROM quay.io/sameersbn/mysql:latest
MAINTAINER Charles Fulton "fultonc@lafayette.edu"

ADD my/custom /etc/mysql/conf.d
