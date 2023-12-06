FROM docker:24.0.7-cli-alpine3.18

ENTRYPOINT ["/usr/local/bin/autoprune.sh"]

COPY autoprune.sh /usr/local/bin
