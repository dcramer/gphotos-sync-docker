FROM python:3.8.1-alpine

RUN mkdir -p /root/.config /config
RUN ln -s /config /root/.config/gphotos-sync 
VOLUME /config

RUN mkdir /target
VOLUME /target

RUN pip install gphotos-sync

ENTRYPOINT [ "gphotos-sync" ]
