require 'sinatra'

get '/' do
  @title = "Uri's Home"
  @header = "Stuff"
  erb :index
end

get '/mac' do
  @title = "Windows to Mac"
  @header = "Coming to Mac from Windows"
  erb :mac
end

get '/resume' do
  @title = "Uri's Resume"
  erb :resume
end

get '/projects' do
  @title = "Uri's Projects"
  erb :projects
end

get '/portfolio' do
  @title = "Uri's Portfolio"
  erb :portfolio
end

get '/test' do
  @title = "Uri's Portfolio"
  erb :test
end