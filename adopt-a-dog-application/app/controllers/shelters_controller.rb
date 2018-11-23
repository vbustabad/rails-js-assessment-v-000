class SheltersController < ApplicationController
  before_action :require_admin

  def index
    @shelters = Shelter.all
  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.save
      redirect_to shelter_path(@shelter)
    else
      render :new
    end
  end

  def show
    @shelter = Shelter.find(params[:id])
    render :show
  end

  def edit
    @shelter = Shelter.find(params[:id])

    if current_user.admin
      render :edit
    elsif current_user == @user
      render :edit
    else
      redirect_to root_path
    end
  end

  def update
    @shelter = Shelter.find(shelter[:id])
    @shelter.update(shelter_params)

    if @shelter.save
      redirect_to shelter_path(@shelter)
    else
      render :edit
    end
  end

  private

  def shelter_params
    params.require(:shelter).permit(:name, :physical_address)
  end

end