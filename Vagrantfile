# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/debian-8.5"

  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
    apt-get --yes install python3
  SHELL

  config.vm.provision "file",
    source: "ediplug-monitor.service",
    destination: "~/ediplug-monitor.service"

  config.vm.provision "shell",
    privileged: false,
    inline: "sudo mv ~/ediplug-monitor.service /etc/systemd/system"

  config.vm.provision "shell", inline: <<-SHELL
    systemctl daemon-reload
    systemctl enable ediplug-monitor.service
    systemctl start ediplug-monitor.service
  SHELL

end
