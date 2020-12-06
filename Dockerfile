FROM kylemanna/openvpn


RUN apk update  && \
    apk add vim net-tools openssh bind-tools busybox-extras

RUN mkdir /opt/openvpn && \
    ln -s /opt/openvpn/openvpn.conf /etc/openvpn/openvpn.conf && \
    ln -s /opt/openvpn/ovpn_env.sh /etc/openvpn/ovpn_env.sh && \
    ln -s /opt/openvpn/ccd /etc/openvpn/ccd
COPY .container/conf/openvpn.conf /opt/openvpn/openvpn.conf
COPY .container/conf/ovpn_env.sh /opt/openvpn/ovpn_env.sh
COPY .container/conf/ccd /opt/openvpn/ccd

