require 'sinatra'

set :markdown, :layout_engine => :haml, :layout => layout

helpers do
  
  
  def link (name,url)
    @output = ""
    @output <<"<p class='link'><a href='http://#{url}' target='_blank'>#{name}</a></p>"
    @output
  end
  
  def image (name,url,size=nil,float=nil)
    @output = ""
    
    if (float.nil?)
      @output << "<p>"
    else
      @output << "<p style=' display:inline;'>"
    end
    
    @output << "<a href='/images/#{url}' target='_blank'>"

		if (size.nil?)
			@output << "<img src='/images/#{url}' alt='#{name}' title='#{name}'>"
		else
			@output << "<img width='#{size}%' src='/images/#{url}' alt='#{name}' title='#{name}'>"
		end
    @output << "</a>"
    @output << "</p>"
    @output
  end    

  
  
end


get '/' do
  @title = "Uri's Home"
  haml :index
end

get '/resume' do
  @title = "Uri's Resume"
	haml :resume
end

get '/projects' do
  @title = "Uri's Projects"
  haml :projects
end

get '/portfolio' do
  @title = "Uri's Portfolio"
  haml :portfolio
end

get '/contact' do
  @title = "Contact"
  @header = @title
  haml :contact
end

get '/pages' do
  @title = "Pages"
  @header = "Pages"
  haml :pages
end

get '/pages/mac' do
  @title = "Windows to Mac"
  @header = "Coming to Mac from Windows"
  haml :mac
end





