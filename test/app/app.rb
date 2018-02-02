require 'sinatra'
require 'resolv'

get '/' do
  sleep ENV['SLEEP'].to_f
  "GET,#{env['HTTP_HOST']},#{ENV['RESPONSE']}"
end

get '/ip/:name' do
  Resolv.getaddress(params[:name])
end

post '/' do
  "POST and #{ENV['RESPONSE'] || 'hello'}"
end
