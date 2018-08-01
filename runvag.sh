#!/bin/bash

mkdir VagrantUbuntuBox
cd VagrantUbuntuBox
vagrant box add bento/ubuntu-16.04
vagrant init bento/ubuntu-16.04
vagrant up
vagrant ssh
