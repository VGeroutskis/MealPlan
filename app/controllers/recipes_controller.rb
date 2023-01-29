class RecipesController < ApplicationController
    #before_action :require_login
    before_action :set_recipe, only: %i[ show edit update destroy ]
  
    def index
      @recipes = current_user.recipes.order(:id)
    end
  
    def show
      
    end
  
    def new
      @recipe = current_user.recipes.build
    end
  
    def create
      @recipe = current_user.recipes.build(recipe_params)
  
      if @recipe.save
        redirect_to recipe_path(@recipe), notice: "Recipe Created!"
      else
        @errors = @recipe.errors.full_messages
        render :new
      end
    end
  
    def destroy
      @recipe.destroy
      redirect_to recipes_path, status: :see_other, notice: "Deleted Recipe: #{@recipe.name}"
    end

    def edit

    end
      
    def update
      
        if @recipe.update(recipe_params)
            redirect_to recipe_path(@recipe), notice: "Recipe Updated!"
        else
            @errors = @recipe.errors.full_messages
            render :edit
        end
    end
  
    private
  
    def recipe_params
      params.require(:recipe).permit(:name, :description)
    end

    def set_recipe
        @recipe = current_user.recipes.find(params[:id])
    end
  end