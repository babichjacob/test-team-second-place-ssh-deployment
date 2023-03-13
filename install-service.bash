sudo cp ./tsp-rust-ssh-deployment.service /etc/systemd/system/tsp-rust-ssh-deployment.service
sudo systemctl daemon-reload
sudo systemctl restart tsp-rust-ssh-deployment
sudo systemctl enable tsp-rust-ssh-deployment
