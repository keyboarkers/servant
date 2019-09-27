require 'sinatra'
require 'daemons'

# Get the overseer running
#Daemons.run('overseer.rb')

# API listener


get '/' do
  'Welcome to Servant!'
end

namespace '/api/v1'
  before do
    content_type 'application/json'
  end

  get '/books' do
    Book.all.to_json
  end
end


# It will manage time

