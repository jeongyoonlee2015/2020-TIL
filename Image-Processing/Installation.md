# Find Installation Errors

Install: Python 3.7.7.and Check <br>
```> python3```

Install: Homebrew <br>
```> /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"```

Install: opencv<br>
```> brew install opencv``` <br>
``` > Updating Homebrew...```<br>
```
Warning: opencv 4.2.0_3 is already installed and up-to-date
To reinstall 4.2.0_3, run `brew reinstall opencv`
```
<br>

Linker Flag <br>
```
> brew install pkg-config
> pkg-config --cflags --libs opencv
```
```
No package 'opencv' found
```
<br>
```
> brew install opencv@2
Updating Homebrew...
==> Installing dependencies for opencv@2: openssl@1.1 and numpy@1.16
==> Installing opencv@2 dependency: openssl@1.1
==> Downloading https://homebrew.bintray.com/bottles/openssl@1.1-1.1.1f.catalina
==> Downloading from https://akamai.bintray.com/72/724cd97c269952cdc28e24798e350
######################################################################## 100.0%
==> Pouring openssl@1.1-1.1.1f.catalina.bottle.tar.gz
==> Caveats
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl@1.1/certs

and run
  /usr/local/opt/openssl@1.1/bin/c_rehash

openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
because openssl/libressl is provided by macOS so don't link an incompatible version.

If you need to have openssl@1.1 first in your PATH run:
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.zshrc

For compilers to find openssl@1.1 you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

For pkg-config to find openssl@1.1 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/openssl@1.1/1.1.1f: 8,057 files, 18MB
==> Installing opencv@2 dependency: numpy@1.16
==> Downloading https://homebrew.bintray.com/bottles/numpy@1.16-1.16.6_1.catalin
==> Downloading from https://akamai.bintray.com/ff/fff9f604e35a06cc3197cc818a851
######################################################################## 100.0%
==> Pouring numpy@1.16-1.16.6_1.catalina.bottle.tar.gz
🍺  /usr/local/Cellar/numpy@1.16/1.16.6_1: 503 files, 10.7MB
==> Installing opencv@2
==> Downloading https://homebrew.bintray.com/bottles/opencv@2-2.4.13.7_7.catalin
==> Downloading from https://akamai.bintray.com/31/31719e8af1404aca919073f25576f
######################################################################## 100.0%
==> Pouring opencv@2-2.4.13.7_7.catalina.bottle.tar.gz
Warning: opencv@2 dependency gcc was built with a different C++ standard
library (libstdc++ from clang). This may cause problems at runtime.
==> Caveats
opencv@2 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have opencv@2 first in your PATH run:
  echo 'export PATH="/usr/local/opt/opencv@2/bin:$PATH"' >> ~/.zshrc

For compilers to find opencv@2 you may need to set:
  export LDFLAGS="-L/usr/local/opt/opencv@2/lib"
  export CPPFLAGS="-I/usr/local/opt/opencv@2/include"

For pkg-config to find opencv@2 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/opencv@2/lib/pkgconfig"

==> Summary
🍺  /usr/local/Cellar/opencv@2/2.4.13.7_7: 278 files, 33.9MB
==> Caveats
==> openssl@1.1
A CA file has been bootstrapped using certificates from the system
keychain. To add additional certificates, place .pem files in
  /usr/local/etc/openssl@1.1/certs

and run
  /usr/local/opt/openssl@1.1/bin/c_rehash

openssl@1.1 is keg-only, which means it was not symlinked into /usr/local,
because openssl/libressl is provided by macOS so don't link an incompatible version.

If you need to have openssl@1.1 first in your PATH run:
  echo 'export PATH="/usr/local/opt/openssl@1.1/bin:$PATH"' >> ~/.zshrc

For compilers to find openssl@1.1 you may need to set:
  export LDFLAGS="-L/usr/local/opt/openssl@1.1/lib"
  export CPPFLAGS="-I/usr/local/opt/openssl@1.1/include"

For pkg-config to find openssl@1.1 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig"

==> opencv@2
opencv@2 is keg-only, which means it was not symlinked into /usr/local,
because this is an alternate version of another formula.

If you need to have opencv@2 first in your PATH run:
  echo 'export PATH="/usr/local/opt/opencv@2/bin:$PATH"' >> ~/.zshrc

For compilers to find opencv@2 you may need to set:
  export LDFLAGS="-L/usr/local/opt/opencv@2/lib"
  export CPPFLAGS="-I/usr/local/opt/opencv@2/include"

For pkg-config to find opencv@2 you may need to set:
  export PKG_CONFIG_PATH="/usr/local/opt/opencv@2/lib/pkgconfig"

```

```
> brew install opencv3
Warning: opencv 4.2.0_3 is already installed and up-to-date
To reinstall 4.2.0_3, run `brew reinstall opencv`
```
```
> cd /usr/local/Cellar/opencv
jeongyoonlee@ijeong-yun-ui-MacBookPro-108 opencv % > ls
4.2.0_3
```
