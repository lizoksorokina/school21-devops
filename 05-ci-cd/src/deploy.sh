#!/bin/bash

chmod 600 ~/.ssh/id_rsa
ssh-keyscan -H 185.139.69.211 >> ~/.ssh/known_hosts
scp ./cat/s21_cat root@185.139.69.211:/usr/local/bin
scp ./grep/s21_grep root@185.139.69.211:/usr/local/bin
