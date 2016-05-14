resource '/srv/www/wp/current' do
  rights :read, 'Everyone'
  rights :write, 'deploy\www-data'
  rights :full_control, 'deploy'
  rights :full_control, 'deploy', :applies_to_children => true
end
