FROM docker.bintray.io/jfrog/artifactory-jcr:7.7.3
LABEL maintainer=85danf@gmail.com
MAINTAINER 85danf@gmail.com

EXPOSE 8081
USER artifactory
VOLUME [/var/opt/jfrog/artifactory]
WORKDIR /opt/jfrog/artifactory

ENV JF_ARTIFACTORY_USER=artifactory 
ENV ARTIFACTORY_VERSION=7.7.3 
ENV ARTIFACTORY_BOOTSTRAP=/artifactory_bootstrap 
ENV JF_PRODUCT_HOME=/opt/jfrog/artifactory 
ENV JF_PRODUCT_DATA_INTERNAL=/var/opt/jfrog/artifactory 
ENV RECOMMENDED_MAX_OPEN_FILES=32000 
ENV MIN_MAX_OPEN_FILES=10000 
ENV RECOMMENDED_MAX_OPEN_PROCESSES=1024

ENTRYPOINT ["/entrypoint-artifactory.sh"]