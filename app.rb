require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end

get("/goodbye") do
  erb(:bye)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 2

  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_calc)
end

get("/root/results") do

  @the_num = params.fetch("users_number").to_f

  @the_result = @the_num ** 0.5.to_f

  erb(:root_results)
end

get("/payment/new") do
  erb(:new_payment)
end

get("/payment/results") do
  
  @rate = params.fetch(%"users_rate")

  @years = params.fetch("users_years").to_f

  @prin = params.fetch("users_principal").to_f

  @payment = ((@rate * @prin) / (1 - (1 + @rate) ** (-@years))

  erb(:payment_results)
end


get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end
