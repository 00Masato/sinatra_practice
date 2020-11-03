require 'sinatra'
require 'sinatra/activerecord'
require './models/balance.rb'
require 'json'

get '/balances' do
  labels = []
  data = []
  balances = Balance.all
  balances.each do |balance|
    labels.push(balance.month)
    data.push(balance.amount)
  end
  labels.to_json
end

get '/balances/:id' do
  Balance.find(params[:id]).to_json
end

post '/balances' do
  json = JSON.parse(request.body.read)
  balance = Balance.new(json)
  if balance.save
    { result: 'success', code: 200 }.to_json
  else
    { result: 'failure' }.to_json
  end
end