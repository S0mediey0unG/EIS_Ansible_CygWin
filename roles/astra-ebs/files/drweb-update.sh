#!/bin/bash
#
#
systemctl stop drweb-configd.service
mount -t cifs //192.168.0.203/drweb_update /distr/drwebnew/bases -o credentials$
7z e /distr/drwebnew/bases/repo/90/av-engine/9/common/ -o/var/opt/drweb.com/bas$
umount /distr/drwebnew//bases # Анмаунтим раздел
systemctl start drweb-configd.service

