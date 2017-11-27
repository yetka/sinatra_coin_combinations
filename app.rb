require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/coin_combinations')


get('/') do
  erb(:input)
end

get('/output') do
  @amount = params.fetch("amount")
  new_coin = Coin.new(@amount)
  @result = new_coin.coin_combinations

  erb(:output)
end
