require 'spec_helper'

describe 'chef_apache_cookbook::default' do
  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  describe package('httpd') do
    it { should be_installed }
  end

  describe package('httpd') do
    it { should be_installed }
  end

  describe file('/etc/motd') do
    it { should be_owned_by 'root' }
  end 
end

