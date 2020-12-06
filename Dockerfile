FROM kylemanna/openvpn


RUN apk update  && \
    apk add vim net-tools openssh bind-tools busybox-extras

COPY .container/openvpn.conf /etc/openvpn/
COPY .container/ovpn_env.sh /etc/openvpn/
