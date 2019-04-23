class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end

  def show
    @owner = Owner.find params[:id]
  end

  def new
    @owner = Owner.new
  end

  def create
    owner = Owner.create owner_params
    redirect_to new_dog_path
  end

  def edit
    @owner = Owner.find params[:id]
  end

  def update
    owner = Owner.find params[:id]
    owner.update owner_params
    redirect_to owners_path(owner.id)
  end

  def destroy
    owner = Owner.find params[:id]
    owner.destroy
    redirect_to owners_path
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :email, :mobile, :address)
  end
end
