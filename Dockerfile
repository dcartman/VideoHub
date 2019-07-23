FROM phusion/passenger-customizable:1.0.6 

ENV HOME /root
ENV APPHOME="/home/app"
ENV WDIR="${APPHOME}/webapp"
ENV PATH="${WDIR}:${PATH}"

WORKDIR ${WDIR}

RUN /pd_build/python.sh && rm -f /etc/service/nginx/down && rm /etc/nginx/sites-enabled/default
ADD testapp.conf /etc/nginx/sites-enabled/testapp.conf

RUN apt-get install -y -qq python3-pip postgresql postgresql-contrib mysql-server && mysql_secure_installation

# Setup my app
COPY --chown=app:app . "${WDIR}"

# Install required Python packages
RUN pip3 install --upgrade pip && pip3 install --trusted-host pypi.python.org --no-cache-dir -r requirements.txt

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 5000

# Use baseimage-docker's init process.
CMD ["/sbin/my_init"]
