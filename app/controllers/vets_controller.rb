class VetsController < ApplicationController
  def new
    @vet = Vet.new
  end

  def create
    vet = Vet.create vet_params
    redirect_to vet_path(vet.id)
  end

  def index
    @vets = Vet.all
  end

  def show
    @vet = Vet.find params[:id]
  end

  def edit
    @vet = Vet.find params[:id]
  end

  def update
    vet = Vet.find params[:id]
    vet.update vet_params
    redirect_to vets_path(vet.id)
  end

  def destroy
    vet = Vet.find params[:id]
    vet.destroy
    redirect_to vets_path
  end

  private

  def vet_params
    params.require(:vet).permit(:name, :phone, :adress, :dog_id, :vac_id)
  end
end
