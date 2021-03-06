echo "Uninstall old versions"
sudo apt-get remove docker docker-engine docker.io containerd runc

echo "SET UP THE REPOSITORY"
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "INSTALL DOCKER ENGINE"
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "add user"
sudo usermod -aG docker ${USER}

echo "check docker version"
docker -v
docker-compose -v