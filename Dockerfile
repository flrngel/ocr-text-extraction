FROM ibotdotout/python-opencv
RUN apt-get install -yq libdc1394-22-dev libdc1394-22 libdc1394-utils
RUN ln -s /dev/null /dev/raw1394
COPY raw1394.rules /etc/udev/rules.d/raw1394.rules
RUN mkdir /asdf
ADD . /asdf
CMD /asdf/run.sh
