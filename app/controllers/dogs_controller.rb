class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find params[:id]
  end

  def new
    @dog = Dog.new
    @services = Service.all
  end

  def create
    dog = Dog.create dog_params
    redirect_to dog_path(dog.id)
  end

  def edit
    @dog = Dog.find params[:id]
  end

  def update
    dog = Dog.find params[:id]
    dog.update dog_params
    redirect_to dogs_path(dog.id)
  end

  def destroy
    dog = Dog.find params[:id]
    dog.destroy
    redirect_to dogs_path
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :breed, :color, :sex, :image, :flea, :worm, :owner_id, :vet_id, :vaccination_ids => [], :service_ids => [])
  end
end
