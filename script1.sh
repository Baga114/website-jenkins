sudo su
sudo apt-get update  
sudo apt install ca-certificates
sudo apt-get install openjdk-11-jdk -y
sudo apt-get install docker.io -y
service docker restart  
sudo usermod -aG docker jenkins
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -  
echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" >/etc/apt/sources.list.d/kubernetes.list
sudo apt-get update  
sudo apt install kubeadm=1.20.0-00 kubectl=1.20.0-00 kubelet=1.20.0-00 -y
systemctl enable kubelet.service
kubeadm init --apiserver-advertise-address=172.31.81.34 --pod-network-cidr=192.168.0.0/16
