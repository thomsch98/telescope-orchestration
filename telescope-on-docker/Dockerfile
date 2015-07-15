FROM phusion/passenger-nodejs:0.9.15

RUN apt-get update && apt-get install -y \
	curl \
	git 

RUN \
	curl https://install.meteor.com/ | sh && \
    	git clone -b "v0.21.1" https://github.com/TelescopeJS/Telescope.git /telescope && \
	cd /telescope && \
	meteor update

WORKDIR /telescope

COPY run.sh /bin/

EXPOSE 3000

CMD ["sh", "/bin/run.sh"]
