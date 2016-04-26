#! /bin/bash
# script/deploy.sh
 
bundle exec rake db:migrate db:seed assets:clean assets:precompile
