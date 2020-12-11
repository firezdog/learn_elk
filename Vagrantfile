Vagrant.configure("2") do |config|
	config.vm.box = "hashicorp/bionic64"
	
	config.vm.network "forwarded_port", guest: 5601, host: 5600
	config.vm.network "forwarded_port", guest: 9200, host: 9201

	config.vm.provider "virtualbox" do |vb|
    		vb.memory = "4096"
	end

	config.vm.provision :shell, path: "bootstrap.sh"
end
