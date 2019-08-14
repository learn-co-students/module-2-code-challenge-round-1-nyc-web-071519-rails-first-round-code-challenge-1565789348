class HeroinesController < ApplicationController
  
  # def self.search(search)
  #   if search
  #     power = Power.find_by(name: search)
  #     if power
  #       self.where(power_id: power)
  #     else
  #       Heroines.all
  #     end
  #   else 
  #     Heroine.all
  #   end
  # end
  
  def index
    @heroines = Heroine.all
  end

  

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      redirect_to heroines_path
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Power.find(@heroine.power_id)
  end

  def destroy
    @heroine = Heroine.find(params[:id])
    @heroine.destroy
    redirect_to heroines_path
  end
  

 
  private
  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
