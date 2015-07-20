FROM phusion/passenger-nodejs:0.9.15

# update apt repos and install necessary tools
RUN apt-get update && apt-get install -y \
	curl \
	git 

# create a non-root user (installation/running telescope app) 
RUN useradd -s /bin/bash -m telescope

# Install meteor as root: That prevents the "sudo" kicking in to ask for a password.
# Hint: Moving the "meteor-user-directory" from "root" to "telescope" is the easiest way
# to get a valid installation for a single non-root user
# Hint: Using a unspec. meteor-installer (from install.meteor.com) might cause problems (breaking changes?)...
RUN \
	curl https://install.meteor.com/ | sh \
    && mv /root/.meteor /home/telescope/ \
    && chown -R telescope:telescope /home/telescope
    
# subsequent commands are run with/under user telescope ...
USER telescope

# ... and use the specified HOME directory
ENV HOME /home/telescope
	
# now fetch the telescope sources and start the meteor-directory update ("moved" from root ... s.a.) 
RUN \
    cd /home/telescope \
    && git clone -b "v0.21.1" https://github.com/TelescopeJS/Telescope.git \
    && cd /home/telescope/Telescope \
    && meteor update

# subsequent commands are run in the defined directory. That holds true for later CMDs ...
WORKDIR /home/telescope/Telescope

COPY run.sh /bin/

EXPOSE 3000

CMD ["sh", "/bin/run.sh"]
