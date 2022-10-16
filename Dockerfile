FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
RUN apt-get update
# RUN apt install wget
# RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
# RUN apt install -y ./google-chrome-stable_current_amd64.deb
# RUN apt-get install -y libglib2.0-dev \
#     libnss3-dev \
#     libgconf-2-4 \
#     libfontconfig1
# RUN apt install -y firefox-geckodriver
RUN apt install -y firefox-esr
ADD requirements.txt /code/
RUN pip install -r requirements.txt
ADD . /code/