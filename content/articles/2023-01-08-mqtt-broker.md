---
title: How to config a secure MQTT broker
tags: mqtt, mqtt broker, mosquitto, mahdad, mahdad ghasemian, مهداد قاسمیان
date: 2023-01-08
description: Today I'm going to discuss how we can configure a mqtt broker with ssl certificate.
img: /blog/mqtt-broker-2.png
author: Mahdad Ghasemian
draft: false
---

## Update system

```bash
$ apt-get update
$ apt-get upgrade
```

## Create a folder

```bash
$ mkdir ./mosquitto-data
```

## Go to the created folder and clone|run install-mqtt-broker script
note: change the following __username__ and __password__

```bash
$ cd ./mosquitto-data
$ sudo curl -s https://raw.githubusercontent.com/MahdadGhasemian/mqtt-broker/main/install-mqtt-broker.sh | bash -s username password
```

### The scripts will show following log

![Script's log](/blog/mqtt-script-log.png)

* copy the last line of the log and run it on your local system like this:

    __$ sudo bash -c "echo \"x.x.x.x mqtt-host-tekp\" >> /etc/hosts"__
* copy __client__ folder to your local, it has three files (ca.crt  client.crt  client.key)

### How to configure the MQTTX client application

![How to configure the MQTTX client app](/blog/mqttx-config.png)

### Test message

![Subscribe inside topic](/blog/mqttx-subscription.png)


![Send and receive message](/blog/mqtt-send-receive-message.png)