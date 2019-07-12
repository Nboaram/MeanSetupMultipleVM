!#/bin/bash
cd
echo ////////////////////////////////////////////////////////////////
echo            Git Cloning Backend
echo ////////////////////////////////////////////////////////////////
sudo git clone https://github.com/Nboaram/TeamAPoolProjectBackend.git
echo
echo
echo ////////////////////////////////////////////////////////////////
echo            Node.JS
echo ////////////////////////////////////////////////////////////////
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
sudo npm init -y
echo
echo
echo ////////////////////////////////////////////////////////////////
echo            Setting up Services
echo ////////////////////////////////////////////////////////////////
sudo cp /home/terraform/MeanSetupMultipleVM/api.service /etc/systemd/system/api.service
echo
echo
echo ////////////////////////////////////////////////////////////////
echo            Moving to Terraform Home Dir
echo ////////////////////////////////////////////////////////////////
echo
echo
cd /home/terraform
echo ////////////////////////////////////////////////////////////////
echo            Starting API
echo ////////////////////////////////////////////////////////////////
cd ~/TeamAPoolProjectBackend
sudo git checkout Terraform 
sudo npm install -y
sudo systemctl daemon-reload
sudo systemctl enable api
sudo systemctl start api
