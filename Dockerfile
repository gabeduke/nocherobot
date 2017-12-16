FROM phlak/hangoutsbot:2.8.0

USER root

# Add your custom plugins
COPY plugins/* /opt/hangoutsbot/hangupsbot/plugins/
RUN chown -R hangoutsbot:hangoutsbot /opt/hangoutsbot/hangupsbot/plugins/

## Add your custom plugins
#COPY spawns/* /etc/hangoutsbot/bin/
#RUN chown -R hangoutsbot:hangoutsbot /etc/hangoutsbot/bin/
#
#COPY requirements.txt /etc/hangoutsbot/
#RUN pip3 install --no-cache-dir -r /etc/hangoutsbot/requirements.txt

USER hangoutsbot
