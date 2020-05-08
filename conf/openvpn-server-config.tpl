management {{ .Management }}

port {{ .Port }}
proto {{ .Proto }}

dev tun

ca {{ .Ca }}
cert {{ .Cert }}
key {{ .Key }}

cipher {{ .Cipher }}
# keysize {{ .Keysize }}
auth {{ .Auth }}
dh {{ .Dh }}
tls-auth ta.key 0

server {{ .Server }}
ifconfig-pool-persist {{ .IfconfigPoolPersist }}
push "{{ .Server }}"
push "dhcp-option DNS 8.8.8.8"
push "dhcp-option DNS 8.8.4.4"

keepalive {{ .Keepalive }}

comp-lzo
max-clients {{ .MaxClients }}

persist-key
persist-tun

log         openvpn.log
verb 3

mute 10

user nobody
group nogroup



