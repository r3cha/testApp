require "capistrano/setup"
require "capistrano/deploy"
require "capistrano/scm/git"
require 'sshkit/sudo'
install_plugin Capistrano::SCM::Git
require "capistrano/rvm"
require "capistrano/bundler"
require "capistrano/rails/assets"
require "capistrano/rails/migrations"
# require 'capistrano/sidekiq'
require 'capistrano/puma'
install_plugin Capistrano::Puma  # Default puma tasks
install_plugin Capistrano::Puma::Workers  # if you want to control the workers (in cluster mode)
#install_plugin Capistrano::Puma::Jungle # if you need the jungle tasks
#install_plugin Capistrano::Puma::Monit  # if you need the monit tasks
install_plugin Capistrano::Puma::Nginx
Dir.glob("lib/capistrano/tasks/*.rake").each { |r| import r }
