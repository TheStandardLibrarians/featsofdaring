# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"
# apt-get update
# apt-get upgrade
# apt-get install build-essential ruby2.0 ruby2.0-dev libsqlite3-dev
# gem2.0 install bundler
# bundle install
# bundle exec rspec spec

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "ubuntu/trusty64"

  # standardlibrarians OS dependencies
  config.vm.provision("shell",
                      inline:  "apt-add-repository ppa:brightbox/ruby-ng-experimental
                                apt-get -y update
                                apt-get -y upgrade
                                apt-get -y install \
                                build-essential git-svn ruby2.1 ruby2.1-dev libsqlite3-dev libpq-dev
                                gem install bundler")

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false
config.vm.network "forwarded_port", guest: 3000, host: 3000
config.ssh.forward_agent = true
end
