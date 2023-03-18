FROM python:slim-bullseye
RUN apt-get -y update # buildkit
RUN apt-get -y install git curl unzip
RUN apt-get clean
RUN git clone https://github.com/flutter/flutter.git -b stable --single-branch --depth 1
ENV PATH="/flutter/bin:$PATH"
RUN flutter doctor
CMD ["bash"]
