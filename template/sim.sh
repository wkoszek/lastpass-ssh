#!/bin/sh

id=IDofKeyFromLPass

export SSH_ASKPASS=./ask.sh

lpass show --notes $id | ssh-add -
