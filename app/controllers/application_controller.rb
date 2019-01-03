
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
  end
  
  get '/articles/new' do 
    erb :new 
  end
  
  post '/articles' do
    erb :index
  end
  
  get '/articles' do
    @articles 
      #add Active Record for all articles
    erb :index 
  end
  
  get '/articles/:id' do 
      #add Active Record for articles by index
    erb :show 
  end
  
  get 'articles/:id/edit' do 
    
    erb :edit 
  end
  
  patch 'articles/:id'
  
  end
  
end
