#-------
# Functions
#-------
log () {
  echo -e "["`date '+%Y/%m/%d %T'`"]:" $1
}

log_warn () {
  log "${txtylw}$1${txtrst}"
}

log_error () {
  log "${txtred}$1${txtrst}"
}

log_critical () {
  log "${bakred}$1${txtrst}"
}

# This is run whenever Ctrl+c is captured
ctrl_c() {
    log_critical "** Script aborted by user! ***"
    exit 1
}

# Tests if a command is available within the PATH
command_exists () {
    type "$1" &> /dev/null ;
}

# Setup a friendly way to wget files
#if command_exists wget ; then
#    wfetch () {
#        local from=$1
#        local to=$2
#        wget -U "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US; rv:1.9.0.5) Gecko/2008120121 Firefox/3.0.5" -O "$to" "$from" || return 1
#    }
#fi

# convert dmgs to isos
dmg2iso () {
    dmg="$1"
    iso="{dmg%.dmg}.iso"
    hdiutil convert "$dmg" -format UDTO -o "$iso" \
        && mv "$iso"{.cdr,} \
        && return 0
    return 1
}

# Figure out my public IP
public_ip () {
    if command_exists lynx ; then
        lynx -dump -hiddenlinks=ignore -nolist http://checkip.dyndns.org:8245/ | awk '{ print $4 }' | sed '/^$/d; s/^[ ]*//g; s/[ ]*$//g'
    elif command_exists wget ; then
        wget -qO- http://checkip.dyndns.org:8245/ | sed 's/[^0-9.]//g;'
    else
        curl -s http://checkip.dyndns.org:8245/ | sed 's/[^0-9.]//g;'
    fi
}

# Regular Date to Unix Timestamp
if command_exists ruby ; then
    date2unix() {
        local raw_date="$@"
        ruby -e "require 'time'; puts Time.parse(\"$raw_date\").to_i"
    }
fi

# Define a word
if command_exists curl ; then
    define() {
        curl dict://dict.org/d:"$@"
    }
fi

### Funny Stuff
look_busy () {
    cat /dev/urandom | hexdump -C | grep --color=auto "ca fe"
}

# ...
# Flush DNS cache
flush_dns() {
    sudo dscacheutil -flushcache
    sudo killall -HUP mDNSResponder
}
# Juniper console
if command_exists screen ; then
    juniper_console() {
        if [ -e /dev/tty.usbserial ]; then
            screen /dev/tty.usbserial
        else
            log_error "No USB TTY detected"
        fi
    }
fi



# Figure out what's got open files... takes a while to run
too_many_open_files() {
  lsof | awk '{ print $1 }' | sort | uniq -c | sort -n
}

# Switch between Puppet test environments
# Puppet 4.7
p47rspec () {
  rvm use ruby-2.1.8
  rvm gemset use puppet4
  export PUPPET_GEM_VERSION=4.8
}
# ...
#-------
# End Functions
#-------
