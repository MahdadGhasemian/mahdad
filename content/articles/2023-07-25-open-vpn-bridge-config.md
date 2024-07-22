---
title: How to setup an OpenVPN by ssh tunnel (bridge mode)
tags: vpn, open-vpn, ssh, ssh-tunnel, mahdad, mahdad ghasemian
date: 2023-07-25
description: Let's configure an OpenVPN on two servers and connect them with SSH tunnel
image: /blog/ssh-tunnel.png
author: Mahdad Ghasemian
draft: false
---

## On Server B (Foreign Server):

```shell
$ mkdir openvpn
$ cd openvpn
$ sudo curl -s https://raw.githubusercontent.com/MahdadGhasemian/openvpn-bridge-config/main/install-upstream.sh -o ./install-upstream.sh && chmod +x ./install-upstream.sh && ./install-upstream.sh open-vpn-port ca-passphrase server-b-ssh-port server-a-ip port-on-server-a
```

Once the script finishes, It will print a command as follows, please run it on your intranet server :
```shell
sudo curl -s https://raw.githubusercontent.com/MahdadGhasemian/openvpn-bridge-config/main/install-bridge.sh | bash -s server-b-ssh-port port-on-server-a open-vpn-port server-b-ip
```

## On Server A (Intranet server):
```shell
$ sudo curl -s https://raw.githubusercontent.com/MahdadGhasemian/openvpn-bridge-config/main/install-bridge.sh | bash -s server-b-ssh-port port-on-server-a open-vpn-port server-b-ip
```

## Add new user:
After setup, run the following command to add a new user on the **`Server B`**.
This will create a new `USERNAME.ovpn` file that you can download and add to your client applications.
```shell
$ ./add_user.sh USERNAME PASSWORD
```


## Example

![ssh-tunnel](/blog/ssh-tunnel.png)

### on the server B (Foreign Server):
```shell
$ sudo curl -s https://raw.githubusercontent.com/MahdadGhasemian/openvpn-bridge-config/main/install-upstream.sh -o ./install-upstream.sh && chmod +x ./install-upstream.sh && ./install-upstream.sh 7766 ca1234 2221 87.248.156.100 4445
```

### on the server A (Intranet server):
```shell
$ sudo curl -s https://raw.githubusercontent.com/MahdadGhasemian/openvpn-bridge-config/main/install-bridge.sh | bash -s 2221 4445 7766 65.108.83.101
```

### Add a user:
We're gonig to add a user named `user1` with the password `1234`.
On the server B, inside the openvpn folder, run following command:
```shell
$ ./add_user.sh user1 1234
```

Once it finishes, a file called `user1.ovpn` will be generated inside the folder. Download it and add to your client app.



