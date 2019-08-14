class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end
  
  def new
    @heroine = Heroine.new
  end

  def create
    @heroine= Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to heroine_path(@heroine)
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def search
      power = Power.find_by(name: params[:power])
    if (power)
      @heroines = Heroine.where(power_id: power.id)
      render 'heroines/index.html.erb'
    else
      redirect_to heroines_path
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
