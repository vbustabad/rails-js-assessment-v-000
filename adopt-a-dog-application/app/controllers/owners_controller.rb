class OwnersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update]

  def index
    @owners = Owner.all
  end

  def new
    @owner = Owner.new
  end

  def create
    @owner = Owner.new(owner_params.merge(user: current_user))

    if @owner.save
      redirect_to owner_path(@owner)
    else
      render :new
    end
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def edit
    @owner = Owner.find(params[:id])

    if current_user.admin
      render :edit
    elsif current_user.owner == @owner
      render :edit
    else
      redirect_to root_path
    end
  end

  def update
    @owner = Owner.find(params[:id])
    @owner.update(owner_params)

    if @owner.save
      redirect_to owner_path(@owner)
    else
      render :edit
    end
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :phone_number, :email_address, :physical_address)
  end

end
