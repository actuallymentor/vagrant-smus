Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/vivid64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provision :shell, path: "setup.sh"
  config.vm.synced_folder "./www", "/usr/local/nginx/html"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end

end