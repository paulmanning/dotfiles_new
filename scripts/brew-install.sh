
echo "--------------------------"
echo " Adding Taps              "
echo "--------------------------"
cat ~/.packages/packages-brew-taps | xargs -t -n 1 brew tap 


echo "--------------------------"
echo " Installing Brews         "
echo "--------------------------"
cat ~/.packages/packages-brew | xargs -t -n 1 brew install

echo "--------------------------"
echo " Installing Casks         "
echo "--------------------------"
cat .packages/packages-brew-cask | xargs -t -n 1 brew cask install  

echo "--------------------------"
echo " Installing node globals  "
echo "--------------------------"
cat .packages/packages-node-global | xargs -t -n 1 npm install -g 

echo "--------------------------"
echo " Done                     "
echo "--------------------------"

