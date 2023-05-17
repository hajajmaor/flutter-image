FROM python:slim-bullseye
RUN apt-get -y update # buildkit
RUN apt-get -y install git curl unzip
RUN apt-get clean autoclean
RUN apt-get autoremove --yes
RUN rm -rf /var/lib/{apt,dpkg,cache,log}/
RUN git clone https://github.com/flutter/flutter -b stable --single-branch --depth 1
ENV PATH="/flutter/bin:$PATH"
RUN flutter doctor
CMD ["bash"]
