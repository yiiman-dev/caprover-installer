sudo apt-get update

sudo apt-get install -yq apt-transport-https ca-certificates curl gnupg-agent software-properties-common

sudo apt-get remove docker docker-engine docker.io

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -



sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt-get update

sudo apt list -a docker-ce

sudo apt install -yq docker-ce=18.03.1~ce~3-0~ubuntu

sudo apt install -yq docker-ce

sudo systemctl start docker
sudo systemctl enable docker

clear

echo 'Say hello to docker! please enter your hub.docker.com account details:'

sudo docker login

clear


echo 'Installation is done! now running caprover docker:'

sudo docker run -p 80:80 -p 443:443 -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v /captain:/captain caprover/caprover

clear
echo 'Caprover is now online'


sudo ufw enable

sudo ufw allow 80,443,3000,996,7946,4789,2377/tcp
sudo ufw allow 7946,4789,2377/udp