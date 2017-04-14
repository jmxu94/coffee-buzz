require_relative '../../yelp.rb'

get '/' do
  erb :'index'
end

get '/test' do
  p Coffeeshop.new(search)
  erb :'index'
end
