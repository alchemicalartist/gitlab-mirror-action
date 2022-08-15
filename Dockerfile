FROM ghcr.io/alchemicalartist/gitlab-mirror-action:latest
WORKDIR /root
COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/entrypoint.sh"]