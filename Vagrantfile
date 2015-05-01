# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
    config.vm.box = "hashicorp/precise64"

    config.vm.network "private_network", ip: "192.168.150.15"

    config.vm.synced_folder "web/", "/vagrant/web/", owner: "www-data", group: "www-data"
    config.vm.synced_folder "database/", "/vagrant/database/", :owner => "vagrant"

    # Enable the Puppet provisioner, with will look in manifests
    config.vm.provision :puppet do |puppet|
        puppet.manifests_path = "puppet/manifests"
        puppet.manifest_file = "default.pp"
        puppet.module_path = "puppet/modules"
    end

    # Every Vagrant virtual environment requires a box to build off of.
    config.vm.box = "hashicorp/precise64"
end
