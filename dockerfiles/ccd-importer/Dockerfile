FROM python:3-alpine

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.2.1/wait /wait
COPY data/CCD_Definition_BULK_SCAN.template.xlsx /definition-template.xlsx
COPY scripts /scripts

RUN apk add --no-cache curl jq \
  && chmod +x /wait /scripts/*.sh /scripts/*.py \
  && pip3 install -r /scripts/requirements.txt

CMD "/wait" && "/scripts/upload-definition.sh"