# update repos
sudo apt-get update

#install wget if is missing
sudo apt-get install wget -y

# Get setup script
wget https://raw.githubusercontent.com/actuallymentor/setup-script-LEMH-stack/master/setup.sh
wget https://raw.githubusercontent.com/actuallymentor/wordpress-setup-script/master/wordpress-auto.sh

# run setup script
sudo bash setup.sh
sudo bash wordpress-auto.sh