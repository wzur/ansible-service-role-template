# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  {
    'bionic' => 'ubuntu/bionic64', # 18.04 LTS
    'xenial' => 'ubuntu/xenial64', # 16.04 LTS
    'trusty' => 'ubuntu/trusty64', # 14.04 LTS
    'centos7' => 'centos/7',       # CentOS 7
    'centos6' => 'centos/6',       # CentOS 6
  }.each do |name, box|
    config.vm.define name do |node|
      node.vm.box = box
    end
  end

  config.vm.provision :shell, path: 'tests/ensure-python.sh'
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "tests/test.yml"
  end

end
