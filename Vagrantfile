nodes = [:node1, :node2, :node3]

def node_number(node)
  s = node.to_s
  s[4,s.length-4]
end

def ip1(node)
  '33.33.33.1'+node_number(node)
end

def ip2(node)
  '33.33.34.1'+node_number(node)
end

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  nodes.each do |node|
    name = node.to_s
    number = node_number(node)
    config.vm.define node do |config|
      config.vm.hostname = node.to_s + ".example.org"
      config.vm.box = "chef/ubuntu-13.10"
      config.vm.network :private_network, ip: ip1(node), adapter: 2, auto_config: false
      config.vm.network :private_network, ip: ip2(node), adapter: 3, auto_config: false
      config.vm.synced_folder "../ganeti", "/root/ganeti"
      config.vm.synced_folder "../instance-debootstrap", "/root/instance-debootstrap"
      config.vm.provider :virtualbox do |vb|
        vb.customize ["modifyvm", :id, "--memory", 2048]
        vb.customize ["createhd", "--filename", name, "--size", 51200]
        vb.customize ["storageattach", :id, '--storagectl', 'IDE Controller', '--port', 1, '--device', 0, '--type', 'hdd', '--medium', name + '.vdi']
      end
      config.vm.provision :shell, :path => "lvm.sh"
      config.vm.provision :shell, :path => "puppet.sh"
      config.vm.provision :puppet
      config.vm.provision :shell, :path => "kvm.sh"
      config.vm.provision :shell, :path => "drbd.sh"
      config.vm.provision :shell, :path => "interfaces.sh", :args => [ip1(node), ip2(node)]
      config.vm.provision :shell, :path => "packages.sh"
    end
  end
end
