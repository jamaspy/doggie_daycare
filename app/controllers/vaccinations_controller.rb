class VaccinationsController < ApplicationController
  
  def index
    @vaccinations = Vaccination.all
  end

  def show
    @vaccination = Vaccination.find params[:id]
  end
  def new
    @vaccination = Vaccination.new
  end
  def create
    vaccination = Vaccination.create vaccination_params
    redirect_to vaccination_path(vaccination.id)
  end

  def edit
    @vaccination = Vaccination.find params[:id]
  end

  def update
    vaccination = Vaccination.find params[:id]
    vaccination.update vaccination_params
    redirect_to vaccinations_path(vaccination.id)
  end

  def destroy
    vaccination = Vaccination.find params[:id]
    vaccination.destroy
    redirect_to vaccinations_path
  end

  private

  def vaccination_params
    params.require(:vaccination).permit(:name, :price, :dog_id)
  end
end
