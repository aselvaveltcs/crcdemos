su -c 'dnf -y install git wget tar qemu-kvm libvirt NetworkManager jq'

sudo systemctl start libvirtd

sudo systemctl enable libvirtd

#Install Python
#See https://developers.redhat.com/blog/2019/05/07/what-no-python-in-red-hat-enterprise-linux-8/

yum -y install @python36

yum -y install @python27

#When you install either (or both) you can easily make /usr/bin/python point to the right place using alternatives --config python

#select the option corresponding to /usr/bin/python3
alternatives --config python

python -V
