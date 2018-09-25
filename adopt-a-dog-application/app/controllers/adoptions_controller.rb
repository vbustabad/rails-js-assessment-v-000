class AdoptionsController < ApplicationController

  def index
    @adoptions = Adoption.all
  end

  def create
    @adoption = Adoption.new(dog: Dog.find(params[:id]), owner: current_user.owner)

    if @adoption.save
      @adoptions << @adoption
      flash[:message] = "Dog has been successfully adopted."
      redirect_to user_path(@user)
    else
      flash[:message] = "Owner registration is required. Please register as an owner in order to adopt a dog."
      redirect_to new_owner_path
    end
  end

end
