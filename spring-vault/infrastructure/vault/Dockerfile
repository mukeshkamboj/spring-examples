FROM vault:0.11.4
COPY write-secret.sh /usr/local/bin/write-secret.sh
RUN chmod +x /usr/local/bin/write-secret.sh
CMD ./usr/local/bin/write-secret.sh & docker-entrypoint.sh server -dev