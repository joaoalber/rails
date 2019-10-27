class CuisineController < ApplicationController
    def show
        cuisine = Cuisine.find(params[:id])
      end
    
      def new
        cuisine = Cuisine.new
      end
    
      def create
        cuisine = Cuisine.new(params.require(:recipe_type).permit(:name))
    
        if cuisine.save
          redirect_to cuisine
        else
          flash[:alert] = 'Você deve informar o nome do tipo de receita'
          render :new
        end
      end
end
