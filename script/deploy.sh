TAG=deployed_at_$(date +"%F_%H-%M")
git tag -m '' -a $TAG
git push --tags
 
ssh user@your_domain.com << 'SSH'
  cd /var/rails_apps/my_app
  rm -rf public/assets
  git pull
  bundle install --without development test
  bundle exec rake db:migrate db:seed assets:clean assets:precompile
  touch tmp/restart.txt
  git describe > public/version
SSH
