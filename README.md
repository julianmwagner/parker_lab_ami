# parker_lab_ami
Tools to set up an AMI for bioinformatics in Caltech's Parker lab

In order to get the machine set up, I ran the following steps:
- Create an ec2 instance of the following type: Ubuntu Server 18.04 LTS (HVM), SSD Volume Type - ami-0bbe6b35405ecebdb
- ssh to the instance
- run `git clone https://github.com/julianmwagner/parker_lab_ami/`
- run `bash ~/parker_lab_ami/setup_ami.sh` (this will take a while as it downloads and installs quite a few packages)
- launch the R console by typing `R`
- run the commands one at a time **in the R console** from the file `~/parker_lab_ami/r_installs.txt`
- you will likely need to exit and connect to the instance again to see all the changes to the .bashrc file take effect
