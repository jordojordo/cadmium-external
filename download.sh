#!/bin/bash

mkdir -p global/

lftp ftps://${CD_USER}:${CD_PASS}@${CD_HOST} -e "
  set ssl:verify-certificate false;
  mirror ~/global global/
  bye
"