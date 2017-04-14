require_relative '../../yelp.rb'

get '/' do
  erb :'index'
end

get '/test' do
  p search
  erb :'index'
end
