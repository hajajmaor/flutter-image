FROM python:slim-buster
RUN apt-get -y update # buildkit
RUN apt-get -y install git curl unzip
RUN git clone https://github.com/flutter/flutter.git -b stable --single-branch --depth 1
ENV PATH="/flutter/bin:$PATH"
RUN flutter doctor # buildkit
EXPOSE 80
CMD ["bash"]
# stable 2.5.3