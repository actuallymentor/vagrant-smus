# update repos
sudo apt-get update

#install wget if is missing
sudo apt-get install wget -y

# Get setup script
wget https://raw.githubusercontent.com/actuallymentor/setup-script-LEMH-stack/master/setup.sh

# run setup script
sudo bash setup.sh