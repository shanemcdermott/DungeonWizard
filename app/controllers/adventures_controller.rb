class AdventuresController < ApplicationController
    helper_method :generate_map, :get_map_cell
    
    require 'AdventureMap'
    def generate_map
        @map = AdventureMap.new
        @map.createMap;
    end
    
    def get_map_cell(row,col)
        @map.getCell(row,col)
    end

    
    def adventure_params
       params.require(:adventure).permit(:name, :party_size, :party_level, :dungeon_type, :dungeon_subtype, :terrain, :climate, :difficulty, :creature_type)
    end
    
    def index
        @adventures = Adventure.all
    end
    
    def new
        @adventure = Adventure.new
        #default: render 'new' template
    end
    
    def create
        @adventure = Adventure.create!(adventure_params)
        flash[:notice] = "#{@adventure.name} was successfully created."
        redirect_to adventures_path
    end
    
    def destroy
        @adventure = Adventure.find(params[:id])
        @adventure.destroy
        flash[:notice] = "Adventure '#{@adventure.title}' deleted."
        redirect_to adventure_path
  end
    
end
