require 'babbler'
require 'sinatra'
require 'pry'

# Get Routes *******************
get '/' do
	erb :index
end

get '/commands' do
	erb :commands
end
get '/search' do
	erb :search
end

get '/copy' do
	erb :copy
end

get '/list' do
	erb :list
end

get '/move' do
	erb :move
end

get '/touch' do
	erb :touch
end

get '/make_directory' do
	erb :make_directory
end

get '/search_error' do
	erb :search_error
end

# Post Routes *******************

post "/search_commands" do 
# binding.pry
	 @command_name = params[:command_name]

	 case @command_name
		 when 'copy' || 'cp'
		 	erb :copy
		 when 'list' || 'ls'
		 	erb :list
		 when 'touch'
		 	erb :touch
		 	when 'copy' || 'cp'
		 	erb :copy
		 else
		 	erb :search_error 

	 end


 end


















	
