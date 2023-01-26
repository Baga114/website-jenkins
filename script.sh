sudo apt-get update  
sudo apt install ca-certificates
sudo apt-get install openjdk-11-jdk -y
sudo apt-get install docker.io -y
service docker restart  
git init
sudo usermod -aG docker jenkins
sudo chmod 666 /var/run/docker.sock

