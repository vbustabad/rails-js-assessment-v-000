class DogsController < ApplicationController
  before_action :require_admin, except: [:show, :index]

  def index
    if params[:shelter_id]
      @dogs = Shelter.find(params[:shelter_id]).dogs.where(adopted: false)
    else
      @dogs = Dog.non_adopted
    end

    respond_to do |format|
      format.html {render :index}
      format.json {render json: @dogs}
    end
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)

    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new
    end
  end

  def show
    @dog = Dog.find(params[:id])
    render :show
  end

  def edit
    @dog = Dog.find(params[:id])

    if current_user.admin
      render :edit
    else
      redirect_to root_path
   end
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.update(dog_params)

    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :edit
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age, :breed, :traits, :weight, :shelter_id)
  end

end
