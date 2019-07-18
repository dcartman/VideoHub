FROM python:3

ENV WDIR="/usr/src/app"
ENV PATH="${WDIR}:${PATH}"
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
WORKDIR ${WDIR}

COPY . .

# Install required system packages
RUN apt update
RUN apt install -y -qq apt-utils 

# Install required Python packages
RUN pip install --upgrade pip
RUN pip install --trusted-host pypi.python.org --no-cache-dir -r requirements.txt

EXPOSE 5000

CMD [ "StartService.sh" ]