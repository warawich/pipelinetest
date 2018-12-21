#!/bin/bash

eval `ssh-agent`
ssh-add /root/.ssh/id_rsa

tar czf deploy.tgz app.js test.robot
scp -pr deploy.tgz root@192.168.1.125:/root/deploy/.
ssh root@192.168.1.125 tar xzf /root/deploy/deploy.tgz -C  /root/deploy
ssh root@192.168.1.125 rm -rvf  /root/deploy/deploy.tgz
eval `ssh-agent -k`
