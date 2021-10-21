# escape=\

FROM ubuntu:latest
ENV TZ=America/Toronto
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update && apt install iptables ssh openssh-server apache2 --yes --force-yes && mkdir /var/run/sshd
ENTRYPOINT ["/bin/bash","-c","service apache2 start && service ssh start && bash"]
EXPOSE 80/tcp 
EXPOSE 22/tcp
