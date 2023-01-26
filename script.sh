sudo apt-get update  
sudo apt install ca-certificates
sudo apt-get install openjdk-11-jdk -y
sudo apt-get install docker.io -y
service docker restart  
sudo usermod -aG docker jenkins
sudo apt-get update  

