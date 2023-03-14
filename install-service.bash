sudo semanage fcontext -a -t bin_t '$DEPLOYMENT_DIRECTORY/$BINARY'
sudo restorecon -Fv $DEPLOYMENT_DIRECTORY/$BINARY
sudo cp ./systemd-deployment.service /etc/systemd/system/$BINARY.service
sudo systemctl daemon-reload
sudo systemctl restart $BINARY
sudo systemctl enable $BINARY
