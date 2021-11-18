FROM ubuntu:18.04

RUN apt-get update && apt upgrade
RUN apt-get install -y --no-install-recommends \
    wget \
    apt-utils \
    ca-certificates

WORKDIR /opt/vscode/
RUN wget -O vscode-install.tar.gz 'https://code.visualstudio.com/sha/download?build=stable&os=linux-x64' \
    && tar -xzf vscode-install.tar.gz \
    && rm vscode-install.tar.gz \
    && cp -r VSCode-linux-x64/* /opt/vscode/ \
    && rm -r VSCode-linux-x64

# RUN while read l; do code --install-extension "$l"; done < vscode-extensions.txt
COPY env.sh /opt/vscode/.env.sh
COPY adeinit /opt/vscode/.adeinit
VOLUME /opt/vscode
CMD ["/bin/sh", "-c", "trap 'exit 147' TERM; tail -f /dev/null & wait ${!}"]
