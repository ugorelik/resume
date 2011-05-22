require 'sinatra'

helpers do
  
  
  def link (name,url)
    @output = ""
    @output <<"<p class='link'><a href='http://#{url}' target='_blank'>#{name}</a></p>"
    @output
  end
  
  
end


get '/' do
  @title = "Uri's Home"
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
  @header = "Coming Soon"
  erb :portfolio
end

get '/test' do
  @title = "Uri's Portfolio"
  erb :test
end








