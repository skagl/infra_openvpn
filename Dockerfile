FROM kylemanna/openvpn
COPY .container/openvpn.conf /etc/openvpn/
COPY .container/ovpn_env.sh /etc/openvpn/
