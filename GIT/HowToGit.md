# 1.) How to Configure git with a client ssl certificate

Precondition:
You need to have key.crt and key.pem file stored in your home directory.

To configure git to use a client ssl certificate on your Mac/Linux use the following steps:

> cat [home-path]/key.crt > [home-path]/key-pair.crt
> cat [home-path]/key.pem >> [home-path]/key-pair.crt

Edit your ~/.gitconfig

[http]
  sslCert = [home-path]/key-pair.crt
  
Make sure you replace [home-path] with the absolute home-path without '~'

