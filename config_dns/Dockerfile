FROM internetsystemsconsortium/bind9:9.18

ADD ./named.conf /etc/bind/named.conf
ADD ./l2-3.zone /etc/bind/l2-3.zone
ADD ./Kl2-3.ephec-ti.be.+013+09782.key /etc/bind/
ADD ./Kl2-3.ephec-ti.be.+013+09782.private /etc/bind/
ADD ./Kl2-3.ephec-ti.be.+013+65088.key /etc/bind/
ADD ./Kl2-3.ephec-ti.be.+013+65088.private /etc/bind/

RUN chown -R bind:bind /etc/bind/ && \
    chmod 644 /etc/bind/*.key && \
    chmod 640 /etc/bind/*.private && \
    chmod 644 /etc/bind/l2-3.zone

EXPOSE 53/udp
EXPOSE 53/tcp

CMD ["-g", "-c", "/etc/bind/named.conf", "-u", "bind"]