FROM nachochip/ffmpeg
MAINTAINER likol@likol.idv.tw

RUN apt-get update \
&& apt-get install -y \
supervisor nginx openssh-server python2.7 python-docutils \
python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy python-nose \
python-pyaudio python-pip

RUN pip install pydub

COPY dejavu/ /dejavu/

WORKDIR /dejavu

ENTRYPOINT /bin/bash
