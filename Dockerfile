FROM ubuntu:trusty
MAINTAINER Parintorn Sukhowatnakit <parintorns@gmail.com>

RUN apt-get update \
  && apt-get install -y \
      curl \
      nano \
      git \
      build-essential \
  && curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - \
  && apt-get install -y nodejs \
  && apt-get clean \
  && npm install pm2 -g

# Install entrypoint
# COPY entrypoint.sh /usr/bin/entrypoint.sh
# RUN chmod +x /usr/bin/entrypoint.sh

# Add known_hosts file
# COPY known_hosts /root/.ssh/known_hosts

EXPOSE 80

# ENTRYPOINT ["/usr/bin/entrypoint.sh"]
CMD ["/bin/bash"]
