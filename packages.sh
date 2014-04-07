#!/usr/bin/env bash

easy_install pyOpenSSL affinity pyyaml docutils sphinx

cabal update
cabal install --global lifted-base lens base64-bytestring snap-server hinotify hslogger network attoparsec json parallel utf8-string curl Crypto regex-pcre vector
ghc-pkg hide monads-tf
