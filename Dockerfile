FROM python:slim-bullseye

RUN pip install --no-cache-dir ansible; apt update; apt install make ssh --no-install-recommends -y && rm -rf /var/cache/apt/*

ADD entrypoint.sh /entrypoint.sh

WORKDIR /mnt

ENTRYPOINT ["/entrypoint.sh"]
CMD ["/bin/bash"]