Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/vivid64"
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.provision :shell, path: "setup.sh"
  config.vm.synced_folder "./www", "/usr/local/nginx/html", nfs: true, :owner => "www-data", :group => "www-data"
  config.vm.provider "virtualbox" do |v|
  host = RbConfig::CONFIG['host_os']
  # Give VM 1/4 system memory & access to all cpu cores on the host
  if host =~ /darwin/
    cpus = `sysctl -n hw.ncpu`.to_i
    # sysctl returns Bytes and we need to convert to MB
    mem = `sysctl -n hw.memsize`.to_i / 1024 / 1024 / 4
  elsif host =~ /linux/
    cpus = `nproc`.to_i
    mem = `grep 'MemTotal' /proc/meminfo | sed -e 's/MemTotal://' -e 's/ kB//'`.to_i / 1024 / 4
  else
    cpus = `wmic cpu get NumberOfCores`.split("\n")[2].to_i
    mem = `wmic OS get TotalVisibleMemorySize`.split("\n")[2].to_i / 1024 /4
  end

  v.customize ["modifyvm", :id, "--memory", mem]
  v.customize ["modifyvm", :id, "--cpus", cpus]
end

  # Export databases
  config.trigger.after :halt do
    run "cd /usr/local/nginx/html/; mysqldump -u root --all-databases > alldb.sql;"
  end

  # Import databases
  config.trigger.after :up do
    run "cd /usr/local/nginx/html/; mysql -u root < alldb.sql"
  end

end