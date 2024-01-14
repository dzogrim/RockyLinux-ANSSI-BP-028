FROM rockylinux:9.3

RUN dnf install -y epel-release
RUN dnf install -y xorriso syslinux createrepo dnf-plugins-core

WORKDIR /app
COPY build.sh /app/build.sh
RUN chmod +x /app/build.sh

ENTRYPOINT ["/app/build.sh"]