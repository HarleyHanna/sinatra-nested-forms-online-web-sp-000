require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    
    get '/' do
      erb :root
    end 
    
    get '/new'
      erb :new
    end
    
    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      @ship1 = Ship.new()
      erb :show
    end
    
    

  end
end
