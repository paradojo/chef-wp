template "/home/ubuntu/elpinero-deploy-keys.pem" do
 source "elpinero-deploy-keys.pem.erb"
 owner "root"
 group "root"
 mode "600"
end

file "/home/ubuntu/git_wrapper.sh" do
  owner "root"
  mode "0755"
  content "#!/bin/sh\nexec /usr/bin/ssh -i /home/ubuntu/elpinero-deploy-keys.pem \"$@\""
end

git "/var/www/html" do
  repository "https://paradojo@bitbucket.org/paradojo/elpinero-wp.git"
  reference "master"
  action :sync
  ssh_wrapper "/home/ubuntu//git_wrapper.sh"
end
