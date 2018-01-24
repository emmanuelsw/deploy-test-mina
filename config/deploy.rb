require 'mina/git'
require 'mina/deploy'

set :application_name, 'lock'
set :user, 'deploy'
set :domain, '45.55.54.26'
set :deploy_to, '/var/www/html/lock'
set :repository, 'git@github.com:emmanuelsw/deploy-test-mina.git'
set :branch, 'master'

desc "Deploys the current version to the server."
task :deploy do

  deploy do
    invoke :'git:clone'
    invoke :'deploy:cleanup'
  end

end
