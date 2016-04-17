
git "/var/www/html" do
  repository "paradojo@bitbucket.org/paradojo/elpinero-wp.git"
  revision "master"
  action :sync
  user "ubuntu"
end
