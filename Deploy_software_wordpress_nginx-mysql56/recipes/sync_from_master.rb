git "/var/www/html" do
  repository "https://paradojo@bitbucket.org/paradojo/elpinero-wp.git"
  reference "master"
  action :sync
end
