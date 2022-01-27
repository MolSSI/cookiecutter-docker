#------------------------------------------------------------#
# Base docker file from the MolSSI cookiecutter
#------------------------------------------------------------#

FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

COPY docker/docker-entrypoint.sh /bin/docker-entrypoint.sh
COPY docker/build_image.sh /bin/build_image.sh

#------------------------------------------------------------#
# Build the image using a single RUN command
#------------------------------------------------------------#

RUN bash /bin/build_image.sh

#------------------------------------------------------------#
# Set the entrypoint
#------------------------------------------------------------#

ENTRYPOINT ["bash", "/bin/docker-entrypoint.sh"]
