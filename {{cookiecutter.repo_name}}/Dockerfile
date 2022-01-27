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

RUN \
    #
    #--------------------------------------------------------#
    # Make the entrypoint file executable
    #--------------------------------------------------------#
    #
    chmod +x /bin/docker-entrypoint.sh && \
    #
    #--------------------------------------------------------#
    # Execute the user-defined build_image.sh script
    #--------------------------------------------------------#
    #
    chmod +x /bin/build_image.sh && \
    bash /bin/build_image.sh

#------------------------------------------------------------#
# Set the entrypoint
#------------------------------------------------------------#

ENTRYPOINT ["/bin/docker-entrypoint.sh"]
