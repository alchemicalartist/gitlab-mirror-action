FROM chrisldenton/alpine-git
USER root
WORKDIR /root
COPY entrypoint.sh /entrypoint.sh
COPY cred-helper.sh /cred-helper.sh
ENTRYPOINT ["/entrypoint.sh"]
