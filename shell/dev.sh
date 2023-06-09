#!/bin/bash

# echo '[dev.sh]'

# git
export GITHUB_TOKEN=""
# https://stackoverflow.com/questions/7726949/remove-tracking-branches-no-longer-on-remote
# alias gitcleanbranchs=git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done

# java
# export PATH=$PATH:$JAVA_HOME/bin
# export JAVA_HOME=/usr/lib/jvm/$(archlinux-java get)

# android
# export ANDROID_HOME=$HOME/Android/Sdk
# export ANDROID_SDK_ROOT=$ANDROID_HOME
# export PATH=$PATH:$ANDROID_HOME/emulator
# export PATH=$PATH:$ANDROID_HOME/tools
# export PATH=$PATH:$ANDROID_HOME/tools/bin
# export PATH=$PATH:$ANDROID_HOME/platform-tools
# export ANDROID_AVD_HOME=$HOME/.android/avd

# nvm
export NVM_DIR="$HOME/xdg/config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"                   # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion