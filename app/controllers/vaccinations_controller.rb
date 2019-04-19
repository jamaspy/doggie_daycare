class VaccinationsController < ApplicationController
  def new
  end

  def edit
  end

  def index
    @vaccinations = Vaccination.all
  end

  def show
    @vaccination = Vaccination.find params[:id]
  end
end
