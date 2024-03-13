Vagrant.configure("2") do |config|
 config.vm.define "machine1" do |machine1|
    machine1.vm.provider "docker" do |docker, override|
      override.vm.box = nil
      docker.build_dir = "."
      override.ssh.insert_key = true
      docker.has_ssh = true
      docker.privileged = true
    end
 end

 config.vm.define "machine2" do |machine2|
    machine2.vm.provider "docker" do |docker, override|
      override.vm.box = nil
      docker.build_dir = "."
      override.ssh.insert_key = true
      docker.has_ssh = true
      docker.privileged = true
    end
 end
end
