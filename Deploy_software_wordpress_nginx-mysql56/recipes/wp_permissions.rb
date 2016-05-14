#directory '/srv/www/wp/current' do
#    mode "0755"
#    recursive true
#end

node[:deploy].each do |application, deploy|
  app_root = "#{deploy[:deploy_to]}/current"
  execute "chmod -R g+rw #{app_root}" do
  end
end
