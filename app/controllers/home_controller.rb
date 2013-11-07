class HomeController < ApplicationController
  def index
  # Load facebook.yml
  config = YAML::load(File.open("#{Rails.root}/config/facebook.yml"))

  # Instantiate a new app with app_id to get access token
  my_app = FbGraph::Application.new(config['production']['api_id'])
  acc_tok = my_app.get_access_token(config['production']['client_secret'])

  

  end
end
