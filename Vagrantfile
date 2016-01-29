# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "grtjn/centos-6.5"

  config.vm.box_check_update = false

  config.vm.network "forwarded_port", guest: 80, host: 8090

  config.vm.synced_folder "www/", "/var/www/"
  config.vm.synced_folder "alias/", "/var/alias.d/"

  config.vm.provision :shell, path: "server-conf/bootstrap.sh"
  config.vm.provision :file, source: "server-conf/php.ini", destination: "/etc/php.ini"
  config.vm.provision :file, source: "server-conf/httpd.conf", destination: "/etc/httpd/conf/httpd.conf"
  config.vm.provision :shell, inline: "service httpd start", run: "always"

  config.ssh.username = "root"
  config.ssh.password = "vagrant"

  config.vm.provider "virtualbox" do |vb|
    vb.customize ["modifyvm", :id, "--memory", "256"]
  end
end
