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

  def show
    @owner = Owner.find(owner[:id])
    redirect_to owner_path(@owner)
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :phone_number, :email_address, :physical_address)
  end

end
