class CocktailsController < ApplicationController
  before_action :set_cocktail, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
  end

  def new
  end

  def create
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def flat_params
    params.require(:cocktail).permit(:name)
  end

end
