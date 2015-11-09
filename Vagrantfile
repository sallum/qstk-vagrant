# -*- mode: ruby -*-
# vi: set ft=ruby :

#_server_ip   = ENV["SERVER_IP"]   || "192.168.50.40"

#_server_hostname   = ENV["SERVER_HOSTNAME"]   || "server"

Vagrant.configure("2") do |config|
 
  # Box name + trusty
  config.vm.box = "ubuntu/trustyamd64"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"

  # VMs characteristics
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.memory = 2048
    #vb.gui = true
  end 

  # Ensures QSTK can render graphics on the headless instance
  config.ssh.forward_x11 = true

  # Define server specifics
#  config.vm.define "server" do |server|
#    server.vm.hostname = _server_hostname
#    server.vm.network "private_network", ip: _server_ip    
#  end

  # Prepare image  
  config.vm.provision "shell", path: "qstk-install.sh"

end


