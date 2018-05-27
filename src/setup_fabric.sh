sudo apt-get update
sudo apt-get -y install     apt-transport-https     ca-certificates     curl     software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get -y install docker-ce
echo "======= install docker compose"
sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "======= install golang"
wget https://dl.google.com/go/go1.10.1.linux-amd64.tar.gz
sudo tar -xvf go1.10.1.linux-amd64.tar.gz
sudo mv go /usr/local
echo "======= install node"
sudo apt-get -y install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.25.0/install.sh | bash
. ~/.bashrc
nvm install 8.9.4
echo "======= check version"
docker -v
docker-compose --version
echo "======= add permision and path"
sudo usermod -aG docker $USER
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.bashrc
echo "======= logout"
logout
