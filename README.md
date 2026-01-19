# Introduction

This project aims to deepen your knowledge by making you use K3d and K3s with
Vagrant.

You will learn how to set up a personal virtual machine with Vagrant and the
distribution of your choice. 

Then, you will learn how to use K3s and its Ingress.

Last but not least, you will discover K3d that will simplify your life.
These steps will get you started with Kubernetes.

________________________________________________________________________________
# info :
This project is a minimal introduction to Kubernetes. Indeed, this
tool is too complex to be mastered in a single subject.
________________________________________________________________________________

# Chapter III

General guidelines

    • The whole project has to be done in a virtual machine.

    • You have to put all the configuration files of your project in folders located at the
        root of your repository (go to Submission and peer-evaluation for more information).
        The folders of the mandatory part will be named: p1, p2 and p3, and the bonus
        one: bonus.

• This topic requires you to apply concepts that, depending on your background, you
may not have covered yet. 

We therefore advise you not to be afraid to read a lot
of documentation to learn how to use K8s with K3s, as well as K3d.
________________________________________________________________________________
# info :
You can use any tools you want to set up your host virtual machine as
well as the provider used in Vagrant.
________________________________________________________________________________

# Chapter IV

# Mandatory part

This project will consist of setting up several environments under specific rules.
It is divided into three parts you have to do in the following order:

    • Part 1: K3s and Vagrant
    • Part 2: K3s and three simple applications

________________________________________________________________________________

# IV.1 Part 1: K3s and Vagrant

- To begin, you have to set up 2 machines.
Write your first Vagrantfile using the latest stable version of the distribution
of your choice as your operating system.

- It is STRONGLY advised to allow only the
bare minimum in terms of resources: 1 CPU and 512 MB of RAM (or 1024). The ma-
chines must be run using Vagrant.

# Here are the expected specifications:

• The machine names must be the login of someone from your team. The hostname
of the first machine must be followed by the capital letter S (like Server).
 The hostname of the second machine must be followed by SW (like ServerWorker).

• Have a dedicated IP on the primary network interface. The IP of the first machine
(Server) will be 192.168.56.110, and the IP of the second machine (ServerWorker)
will be 192.168.56.111.

• Be able to connect with SSH on both machines with no password.

________________________________________________________________________________
# Warning :
You will set up your Vagrantfile according to modern practices.
________________________________________________________________________________

You must install K3s on both machines:
• In the first one (Server), it will be installed in controller mode.
• In the second one (ServerWorker), in agent mode.
________________________________________________________________________________
# Idea :
You will have to use kubectl (and therefore install it as well).
________________________________________________________________________________

# Here is a basic example of a Vagrantfile:

$> cat Vagrantfile
Vagrant.configure(2) do |config|
    [...]
    config.vm.box = REDACTED
    config.vm.box_url = REDACTED

    config.vm.define "wilS" do |control|
            control.vm.hostname = "wilS"
            control.vm.network REDACTED, ip: "192.168.56.110"
            control.vm.provider REDACTED do |v|
                v.customize ["modifyvm", :id, "--name", "wilS"]
                [...]
        end
        config.vm.provision :shell, :inline => SHELL
            [...]
        SHELL
            control.vm.provision "shell", path: REDACTED
    end
    config.vm.define "wilSW" do |control|
        control.vm.hostname = "wilSW"
        control.vm.network REDACTED, ip: "192.168.56.111"
        control.vm.provider REDACTED do |v|
            v.customize ["modifyvm", :id, "--name", "wilSW"]
            [...]
        end
        config.vm.provision "shell", inline: <<-SHELL
            [..]
        SHELL
            control.vm.provision "shell", path: REDACTED
    end
end