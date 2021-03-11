FROM ubuntu:20.04
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    unzip\
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /autoindex && mkdir -p /database && mkdir -p /data
WORKDIR /autoindex
RUN curl -s https://api.github.com/repos/nielsAD/autoindex/releases/latest | grep "browser_download_url" | cut -d : -f 2,3 | tr -d \" | wget -qi - && unzip -o autoindex*.zip && rm autoindex*.zip
EXPOSE 80
ENV refresh="60m"
VOLUME ["/database","/data"]
CMD ./autoindex -d /database/db -r /data -i $refresh -cached