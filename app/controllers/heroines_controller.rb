class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end


def show
  @heroine = Heroine.find(params[:id])
  @powers = Power.all
  
end

def new
  @heroine = Heroine.new
end


def create
  @heroine = Heroine.create(heroines_params)
   if @heroine.valid?
   redirect_to heroine_path(@heroine)
   else
    flash[:errors] = @heroine.errors.full_messages 
    redirect_to new_heroine_path
   end
end







private
def heroines_params
params.require(:heroine).permit(:name, :super_name, :power_id)
end


end


