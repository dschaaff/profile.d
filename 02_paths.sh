#### PATH changes go here
#export PATH=/Applications/terraform_0:$PATH

# Brew stuff
export PATH=$HOME/bin:/usr/local/sbin:/usr/local/bin:$PATH
export PATH=$HOME/bin/kui/bin:$PATH

# go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# Python
#export PATH=/usr/local/opt/python3/libexec/bin:$PATH

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

# JRuby ($JRUBY_HOME *must* be set)
#export PATH=$PATH:$JRUBY_HOME/bin

# Groovy ($GROOVY_HOME *must* be set)
#export PATH=$GROOVY_HOME/bin:$PATH

# mongodb
export PATH=$PATH:/usr/local/Cellar/mongodb@3.4/3.4.10/bin
# Sublime Text
export PATH=/Applications/Sublime\ Text.app/Contents/SharedSupport/bin:$PATH
# Sublime Merge
export PATH=/Applications/Sublime\ Merge.app/Contents/SharedSupport/bin:$PATH
# home directory bin path
export PATH=$HOME/bin:$PATH
