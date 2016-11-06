#!/bin/sh




echo '... saving global npm package list'
ls `/Users/paul/.nvm/versions/node/v6.7.0/bin/npm root -g` > /Users/paul/.packages/packages-node-global

echo '... saving brew taps'
/usr/local/bin/brew tap > /Users/paul/.packages/packages-brew-taps

echo '... saving brew list'
/usr/local/bin/brew list > /Users/paul/.packages/packages-brew

echo '... saving brew cask list'
/usr/local/bin/brew cask list > /Users/paul/.packages/packages-brew-cask

echo '... saving mac applications list'
ls /Applications > /Users/paul/.packages/packages-apple-applications

echo '... saving gem installs'
/usr/local/bin/gem list --no-version > /Users/paul/.packages/packages-gem

#find /Applications \
#	-path '*Contents/_MASReceipt/receipt' \
#	-maxdepth 4 -print |\
#	sed 's#.app/Contents/_MASReceipt/receipt#.app#g; s#/Applications/##' > /Users/paul/.packages/packages-app-store-apps

#echo '... saving apple app store apps (in mas format)'
#mas list | while read f1 f2; do; echo $f1 >> /Users/paul/.packages/packages-app-store-apps ; done; 

#echo '... backing up .dotfiles'
#/usr/local/bin/mackup backup -f
#/usr/local/bin/mackup uninstall -f

#sudo chmod a+x ~/*.sh

