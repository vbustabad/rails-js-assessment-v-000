class AdoptionsController < ApplicationController
  before_action :require_admin

  def index
    @adoptions = Adoption.all
  end

  def create
    @adoption = Adoption.new(dog: @dog, owner: current_user.owner)

    if @adoption.save
      Adoption.all.delete(@dog)
      flash[:notice] = "Dog has been successfully adopted."
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Owner registration is required. Please register as an owner in order to adopt a dog."
      redirect_to new_owner_path
    end
  end

end
