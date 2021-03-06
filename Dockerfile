FROM thecloudxpert/codestream-ci:latest
LABEL maintainer="thecloudxpert"

WORKDIR /packer

ENV PACKER_VER=1.7.3

# Install jq

RUN yum install wget unzip git -y
# RUN     yum -y install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm && \
#        yum install jq -y

RUN wget -q https://releases.hashicorp.com/packer/${PACKER_VER}/packer_${PACKER_VER}_linux_amd64.zip && \
        unzip packer_${PACKER_VER}_linux_amd64.zip && \
        mv -f packer /usr/local/bin/
