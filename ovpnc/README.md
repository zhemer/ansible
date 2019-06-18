Role ovpnc
==========

The role allows to install and configure openvpn client on Linux host

Requirements
------------

None.

Role Variables
--------------

# configuration directory of client
ovpnc_client_conf_dir: /etc/openvpn

# configuration filename
ovpnc_client_conf: '{{ovpnc_client_conf_dir}}/{{ovpnc_client_name}}.conf'

# client's name
ovpnc_client_name: client1

# generate all keys and certificates from scratch (true) or use supplied here
ovpnc_conf_gen: false

# packages to install
ovpnc_inst_packages:

# OS distribution
ovpnc_os_dist: Ubuntu

# OS distribution's version
ovpnc_os_dist_ver: 16

# pass phrase for CA certificate
ovpnc_pass_phrase: 1234

# VPN server's address, port and protocol
ovpnc_server: 8.8.8.8 2195 udp

# Common name of the server
ovpnc_server_cn: vpn-server.com

# Playbook temporary directory
ovpnc_tmp: /tmp/vpn

# Various client keys
ovpnc_key_priv:
ovpnc_key_cert:
ovpnc_key_ca:
ovpnc_key_stat:

Dependencies
------------

None.

Example Playbook
----------------

Example of how to use the role:

    - hosts: localhost
      roles:
         - { role: ovpnc, ovpnc_os_dist: Ubuntu, ovpnc_os_dist_dist: 19 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
