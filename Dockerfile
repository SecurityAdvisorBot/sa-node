FROM vichuhari100/sa-node:latest
CMD ["/bin/bash"]
RUN apt-get --allow-releaseinfo-change update
RUN apt-get update && apt-get install -y less curl groff zip unzip
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install -b ~/bin/aws
RUN curl -sSL https://get.docker.com/ | sh