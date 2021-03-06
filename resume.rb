require 'sinatra'

set :markdown, :layout_engine => :haml, :layout => layout


def tumblr_url
	@tumblr_url = "uricode.tumblr.com"
end

helpers do
  
  def tumblr_url
  	"uricode.tumblr.com/"
  end
  
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

  def category title 
		%@
		
		<a name="#{title.downcase}">
			<h1 class="title">#{title.capitalize}</h1>
		</a>
		<p class="top" ><a href="#top">Top</a></p>
		@			
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

get '/pages/:title' do |title|
	haml "pages/#{title}".to_sym
end

get '/workterms' do
  @title = "Work Terms"
  @header = "Work Terms"
  haml :workterms
end







