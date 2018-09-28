class AdoptionsController < ApplicationController

  def index
    @adoptions = Adoption.all
  end

  def remove
    @dog = Dog.find(params[:id])
    remove_instance_variable(:@dog)
  end

  def create
    @adoption = Adoption.new(dog: Dog.find(params[:id]), owner: current_user.owner)

    if @adoption.save
      Dog.remove(@dog)
      flash[:notice] = "Dog has been successfully adopted."
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Owner registration is required. Please register as an owner in order to adopt a dog."
      redirect_to new_owner_path
    end
  end

end
