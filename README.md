# autoindex docker
Docker image for https://github.com/nielsAD/autoindex
# Usage

```
docker run -d \
    -p 80:80 
    -e refresh=<minutes with m> # Auto index every XX minutes. Format must be "60m"
    -v <directory to index>:/data:ro # Directory containing the file to index
    -v <database location>:/database # Location of the sqlite database
    cpulabio/autoindex:latest
```