FROM phlak/hangoutsbot:2.8.0

USER root

RUN apk add --update py-pip
RUN pip install awscli --upgrade

# Add your custom plugins
COPY plugins/* /opt/hangoutsbot/hangupsbot/plugins/
RUN chown -R hangoutsbot:hangoutsbot /opt/hangoutsbot/hangupsbot/plugins/

USER hangoutsbot
