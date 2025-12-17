FROM ghcr.io/gohugoio/hugo:latest

# Install git as root user
USER root
RUN apk add --no-cache git

# Copy and setup entrypoint script with proper permissions
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

WORKDIR /src
EXPOSE 1313

ENTRYPOINT ["/entrypoint.sh"]
CMD ["server", "--bind", "0.0.0.0", "-D"]
