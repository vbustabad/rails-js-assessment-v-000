class SheltersController < ApplicationController

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

end
