FROM alpine:3.13
RUN apk --no-cache add vsftpd

COPY start_vsftpd.sh /bin/start_vsftpd.sh
COPY vsftpd.conf /etc/vsftpd/vsftpd.conf

EXPOSE 21
VOLUME /home

STOPSIGNAL SIGKILL

ENTRYPOINT ["/bin/start_vsftpd.sh"]
