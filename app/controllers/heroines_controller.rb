class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    @heroine = Heroine.new(heroine_params)

    @heroine.save
    redirect_to @heroine
  end

  private
    def heroine_params
      params.require(:heroine).permit(:name, :supername)
    end


end
