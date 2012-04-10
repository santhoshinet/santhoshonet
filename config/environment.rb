require 'yaml'
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Santhoshonet::Application.initialize!

YAML::ENGINE.yamler = 'syck'