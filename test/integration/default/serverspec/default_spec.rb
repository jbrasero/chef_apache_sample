require 'spec_helper'

describe 'chef_apache_cookbook::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  #
  #
  describe package('httpd') do
    it { should be_installed }
  end


  describe 'apache::default' do
   describe port(80) do
    it { should be_listening }
  end
end


  describe command('curl http://localhost') do
   its(:stdout) { should match /Hello, world!/ }
  end 

#  describe file('/etc/motd') do
 #   it { should be_owned_by 'root' }
 # end 
end

