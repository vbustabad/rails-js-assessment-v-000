class OwnersController < ApplicationController

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params)

    if @owner.save
      redirect_to owner_path(@owner)
    else
      render :new
    end
  end

end
