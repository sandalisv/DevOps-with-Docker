FROM docker

# Install necessary dependencies
RUN apk add --update --no-cache git

# Copy build script into the container
COPY builder.sh /builder.sh

# Set the build script as the entry point
ENTRYPOINT ["sh", "/builder.sh"]
