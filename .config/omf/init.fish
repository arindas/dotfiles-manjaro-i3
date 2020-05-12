#!/usr/bin/env fish

# bob the fish config
set -xg theme_color_scheme gruvbox
function fish_greeting; end  # disable greeting

# golang system configuration
set PATH $PATH ~/applications/go/bin/  # add go tools to path
set -xg GOPATH ~/source/go
set -xg GOBIN $GOPATH/bin
set PATH $PATH $GOBIN  # make go programs available

# android developement configuration
set -xg ANDROID_SDK_ROOT ~/applications/android-sdk

# flutter configuration
function flutter
  JAVA_HOME=/home/arindas/.sdkman/candidates/java/8.0.202-zulu \
  ~/applications/flutter/bin/flutter $argv
end

set -xg CHROME_EXECUTABLE /opt/google/chrome/google-chrome

# node setup
set -xg N_PREFIX ~/applications/node
set PATH $N_PREFIX/bin $PATH

# rust setup
set PATH ~/.cargo/bin $PATH

# add /usr/local/ library paths
set -xg LD_LIBRARY_PATH /usr/lib /usr/lib32 /usr/lib64 \
/usr/local/lib /usr/local/lib64

# add /usr/local to pkg config paths
set -xg PKG_CONFIG_PATH /usr/lib/pkgconfig /usr/lib32/pkgconfig /usr/lib64/pkgconfig \
/usr/local/lib/pkgconfig /usr/local/lib64/pkgconfig

# set up hotspot
function hotspot
  sudo echo Turning hotspot $argv...
  switch $argv
    case on
      sudo create_ap wlp2s0 wlp2s0 arubox Aru.64g6 > /dev/null & disown
    case off
      sudo killall -q create_ap
    case default
      echo "Invalid option"
  end
end
