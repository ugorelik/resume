require 'rubygems'
require 'sinatra'

get '/' do
  @title = "Uri's Page"
  erb :index
end

get '/mac' do
  @title = "Mac Tips"
  erb :mac
end