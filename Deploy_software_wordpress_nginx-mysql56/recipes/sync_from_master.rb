
git "/var/www/html" do
  repository "git@github.com:paradojo/wp-modified.git"
  revision "master"
  action :sync
  user "ubuntu"
end
