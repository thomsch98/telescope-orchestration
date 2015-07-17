FROM phusion/passenger-nodejs:0.9.15

RUN apt-get update && apt-get install -y \
	curl \
	git 

# using the meteor-installer doesn't provide a fixe version but the most recent one.
# This might be a problem...

RUN \
	curl https://install.meteor.com/ | sh && \
    git clone -b "v0.21.1" https://github.com/TelescopeJS/Telescope.git /telescope && \
	cd /telescope && \
	meteor update

WORKDIR /telescope

COPY run.sh /bin/

EXPOSE 3000

# BEWARE! This script starts meteor/telescope as 

CMD ["sh", "/bin/run.sh"]
