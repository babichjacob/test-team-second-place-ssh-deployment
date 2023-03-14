sudo semanage fcontext -a -t bin_t '<<directory>>/<<binary>>'
sudo restorecon -Fv <<directory>>/<<binary>>
sudo cp ./systemd-deployment.service /etc/systemd/system/<<binary>>.service
sudo systemctl daemon-reload
sudo systemctl restart <<binary>>
sudo systemctl enable <<binary>>
