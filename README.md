 # Read Me:

A Linux control machine is required to manage Windows hosts. This Linux control machine can be a Windows Subsystem for Linux (WSL) bash shell.

Note: Running Ansible from a Windows control machine directly is not a goal of the project. Refrain from asking for this feature, as it limits what technologies, features, and code we can use in the main project in the future.

Note: The Windows Subsystem for Linux (Beta) is not supported by Microsoft or Ansible and should not be used for production systems.

Applies To: Windows 10 (Anniversary update or later), Windows Server 2008 R2, Windows Server 2012, Must be 64 -bit and up to date will not work on 32-bit

## How to enable: (Windows 10)
1. Search for "Windows Update"
2. Use "Developer Features" or "For Developers"
3. Then do a "Windows Update"
4. Check update history make sure it has been updated
5. Control Panel, click “Programs,” and click “Turn Windows Features On or Off” under Programs and Features. Enable the “Windows Subsystem for Linux (Beta)” option in the list here and click “OK.”
6. Restart Computer
7. Open cmd and run "bash" command


## How to enable: (Windows Server 2008 R2)
1. Search for "Windows Update"
2. Use "Developer Features"
3. Then do a "Windows Update"
4. Check update history make sure it has been updated
5. Control Panel, click “Programs,” and click “Turn Windows Features On or Off” under Programs and Features. Features, Add Features, Enable the “Subsystem for UNIX-based Applications” option in the list here and click “OK.”
6. Restart Server
7. Open cmd and run
8. ???


-------------------------------------------------------------------------------------------------

# Installing Ansible for the first time:

We will be clean install of Ansible and Python. We will be using a bash shell script to save time.

Steps:

1. nano install.sh (copy and paste or download file or even type this out) 
```
#!/bin/bash
#Script to download and install Ansible for self configuration
ssh-keygen
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible
sudo apt-get install git
sudo ansible --version
sudo pip install --upgrade pip
sudo mkdir pulsemicro
cd pulsemicro
sudo git clone https://github.com/pulsemicro/ansible.git
sudo git config --global user.name "username"
cd ansible
```

2. Write out and exit
3. Run the bash shell script ". install.sh"
4. Run command "ansible-playbook -i localhost -k 31rendertest.yml"







