# Solo doesn't necessarily create the file_cache_path,
# but we don't want to mess with it if it exists
directory Chef::Config[:file_cache_path] do
  owner 'vagrant'
  group 'vagrant'
  mode 0777
  action :create
  recursive true
end
