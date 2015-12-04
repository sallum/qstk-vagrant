# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
 
  # Box name + trusty
  #config.vm.box = "ubuntu/trustyamd64"
  #config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.box = "ubuntu/ubuntu12"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

  # VMs characteristics
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--ioapic", "on"]
    vb.memory = 2048
  end 

  # Ensures QSTK can render graphics on the headless instance
  config.ssh.forward_x11 = true
  config.ssh.forward_agent = true

  # Prepare image  
  config.vm.provision "shell", path: "qstk-install.sh"

end


