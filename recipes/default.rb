#
# Cookbook Name:: detwa_gitconfig
# Recipe:: default
#

user_dir = node['detwa_gitconfig']['user']
cookbook_file "/home/#{user_dir}/.gitconfig" do
    source '.gitconfig'
    owner node['detwa_gitconfig']['user']
    group node['detwa_gitconfig']['user']
    mode '0644'
end
