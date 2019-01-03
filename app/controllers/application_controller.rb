
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    redirect to "/articles"
  end
  
  get '/articles/new' do 
    @article = Article.new 
    erb :new 
  end
  
  post '/articles' do
    article = Article.create(params)
    article.save 
    erb :index
  end
  
  get '/articles' do
    @articles = Article.all 
      
    erb :index 
  end
  
  get '/articles/:id' do
    #id = params[:id]
    
    @article = Article.find(params[id])
    
    erb :show 
  end
  
  get 'articles/:id/edit' do 
    
    erb :edit 
  end
  
  patch 'articles/:id' do
  
  end
  

end
