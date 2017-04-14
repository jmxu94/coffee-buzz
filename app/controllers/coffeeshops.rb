get '/coffeeshops' do
  # Coffeeshop.all.destroy
  if params['city'] == ""
    coffeeshop = Coffeeshop.create(search)
  else
    coffeeshop = Coffeeshop.create(search(params['city']))
  end
  redirect "/coffeeshops/#{coffeeshop.id}"
end

get '/coffeeshops/:id' do
  @coffeeshop = Coffeeshop.find(params[:id])
  erb :'/coffeeshops/show'
end
