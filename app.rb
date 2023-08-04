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

=begin
get("/payment/results") do
  
  @rate = %params.fetch("users_rate").to_f%%
  r = @rate

  @years = params.fetch("users_years").to_f
  n = @years * 12.to_f

  @prin = params.fetch("users_principal").to_f
  pv = @prin

  numerator = r * pv
  denominator = 1 - ((1 + r) ** (-n))

  @payment = numerator / denominator

  erb(:payment_results)
end
=end

get("/random/new") do
  @the_min = params.fetch("users_min").to_f

  @the_max = params.fetch("users_max").to_f

  @random_num = rand(@the_min..@the_max)

  erb(:random_new)
end


get("/") do
  redirect("/howdy")
end
