FROM docker:29.2.1-cli-alpine3.23

ENTRYPOINT ["/usr/local/bin/autoprune.sh"]

COPY autoprune.sh /usr/local/bin
