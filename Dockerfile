FROM debian:9
RUN echo 'export PATH=$HOME/.roswell/bin:$PATH' >> ~/.bashrc
RUN apt update && apt install -y curl make bzip2 &&\
    curl -L -O https://github.com/roswell/roswell/releases/download/v17.10.10.83/roswell_17.10.10.83-1_amd64.deb &&\ 
    dpkg -i *.deb && ros && rm *.deb
