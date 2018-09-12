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

  def edit
    @user = User.find(params[:id])

    if current_user.admin
      render :edit
    elsif current_user == @user
      render :edit
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

    if @user.save
      redirect_to user_path(@user)
    else
      render :edit
   end
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :phone_number, :email_address, :physical_address)
  end

end
