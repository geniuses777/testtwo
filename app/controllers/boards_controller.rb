class BoardsController < ApplicationController
    def create_at
       nemo = Free.new
       nemo.title = params[:title]
       nemo.content = params[:content]
       nemo.user = params[:user]
       nemo.save
       
       redirect_to '/'
    end
    def index
       @all = Free.all 
    end
    def new_at
       nemo = Movie.new
       nemo.title = params[:title]
       nemo.director = params[:director]
       nemo.actor = params[:actor]
       nemo.star = params[:star]
       nemo.save
       
       redirect_to '/boards/movie'
    end
    def movie
       @semo = Movie.all 
    end
    def show1
       @special = Free.find params[:id] 
    end
    def show2
       @change = Free.find params[:id] 
    end
    def edit
        semo = Free.find params[:id]
        semo.title = params[:title]
        semo.content = params[:content]
        semo.user = params[:user]
        semo.save
        
        redirect_to "/boards/show1/#{semo.id}"
    end
    def delete
       move = Free.find params[:id] 
       move.destroy
       
       redirect_to '/'
    end
end
