# autoindex docker
Docker image for https://github.com/nielsAD/autoindex
# Usage

`docker run -p 80:80 -v <directory to index>:/data:ro -v <database location>:/database cpulab/autoindex:latest`
