# QSTK using Vagrant

This will install [QSTK][1] on a [Vagrant][2]-managed virtual machine running Ubuntu Trusty.

# Why?

The process of installing this Tool seems to be tedious and repetitive for many students following [Computational Investing Part I](https://www.coursera.org/course/compinvesting1) so with this simple command, one can automate the whole process.

# Install

Follow these steps in order.

## Dependencies

In order to run this in your computer you need to have:
 - [Vagrant][2]
 - [VirtualBox][3]

## Get started

Clone this repo, then cd into it

	git clone https://github.com/sallum/qstk-vagrant.git
    cd qstk-vagrant

## Run vagrant

    vagrant up
    
It will install [QSTK][1] and all its dependencies on the new virtual machine.

# Test run

Execute the following commands to see that everything works:

    vagrant -Y ssh
    cd QSTK-0.2.8/Examples
    python Validation.py

You should see in the terminal this message: "Everything works fine: You're all set."

# Uninstall

To uninstall this installation from your computer type:
	
	vagrant destroy

This will remove the virtual machine and the QSTK installed on it.

# For Mac Users
In order to see the pdfs generated on your local machine, you might need to install [XQuartz][4]so you can do the x11 forwarding that is needed fromt the virtual machine.

[1]: http://wiki.quantsoftware.org/index.php?title=QSToolKit_Installation_Guide_Ubuntu "QSTK"
[2]: http://www.vagrantup.com/ "Vagrant"
[3]: https://www.virtualbox.org/ "VirtualBox"
[4]: http://www.xquartz.org/ "XQuartz"
