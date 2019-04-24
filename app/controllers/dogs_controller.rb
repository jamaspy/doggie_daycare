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

    if params[:file].present?
      # Then call Cloudinary's upload method, passing in the file in params
      req = Cloudinary::Uploader.upload(params[:file])
      # Using the public_id allows us to use Cloudinary's powerful image
      # transformation methods.
      dog.image = req["public_id"]
      dog.save
    end
    redirect_to dog_path(dog.id)
  end

  def edit
    @dog = Dog.find params[:id]
  end

  def update
    dog = Dog.find params[:id]
    dog.update dog_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      dog.image = req["public_id"]
    end
    # We're using update_attributes here because we don't want to make a PUT request
    # (.update to update the attributes in dog_params, then .save to update the
    # image)
    dog.update_attributes(dog_params)
    dog.save
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
