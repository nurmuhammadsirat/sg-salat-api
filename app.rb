require 'sinatra'
require 'json'
require_relative 'app/prayers'

@prayers = Prayers.create "data/#{Time.now.year}.csv"

get '/today' do
  {
    fajar: '05:20',
    zuhur: '13:10',
    asar: '16:20',
    maghrib: '19:10',
    isyak: '20:30'
  }.to_json
end
