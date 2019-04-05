# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

set :application, 'testapp.rubyvkube.ru'
set :user, 'r3c'

set :repo_url, "git@github.com:r3cha/testApp.git"

set :rvm_ruby_version, '2.5.3'

set :deploy_to, "/var/www/#{fetch(:application)}" 
set :nginx_server_name, fetch(:application)
set :nginx_config_name, fetch(:application)
set :nginx_ssl_certificate, "/etc/letsencrypt/live/#{fetch(:application)}/fullchain.pem"
set :nginx_ssl_certificate_key, "/etc/letsencrypt/live/#{fetch(:application)}/privkey.pem"
# set :nginx_ssl_certificate, "/etc/letsencrypt/live/rubyvkube.ru/fullchain.pem"
# set :nginx_ssl_certificate_key, "/etc/letsencrypt/live/rubyvkube.ru/privkey.pem"

set :pty, true
# set :puma_init_active_record, false

append :linked_files, 'config/mongoid.yml'
append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'public/.well-known', 'tmp/sockets', 'public/packs', 'public/uploads', 'node_modules'

# before 'deploy:migrating', 'deploy:yarn_install'
# before 'deploy:assets:precompile', 'deploy:yarn_install'

# namespace :deploy do
#   desc 'yarn install packages'
#   task :yarn_install do
#     on roles(:web) do
#       within release_path do
#         execute("cd #{release_path} && sudo yarn install")
#       end
#     end
#   end
# end
