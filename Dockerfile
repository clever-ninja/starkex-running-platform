FROM ciimage/python:3.7

# Python and pip.
RUN apt update
RUN apt install -y wget python3.7-dev python3-pip

# Copy files.
COPY . /app/
WORKDIR /app/
RUN chmod a+x player.py

# Install python packages.
RUN python3.7 -m pip install --upgrade pip
RUN python3.7 -m pip install -r requirements.txt
