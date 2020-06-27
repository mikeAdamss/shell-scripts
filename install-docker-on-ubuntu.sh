curl -O https://download.docker.com/linux/ubuntu/dists/bionic/pool/edge/amd64/containerd.io_1.2.2-3_amd64.deb &&
sudo apt install ./containerd.io_1.2.2-3_amd64.deb &&
sudo apt update &&
sudo apt install --yes apt-transport-https ca-certificates curl gnupg2 software-properties-common &&
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" &&
sudo apt update &&
sudo apt install --yes docker-ce
