class VetsController < ApplicationController
  def new
  end

  def index
    @vets = Vet.all
  end

  def show
    @vet = Vet.find params[:id]
  end

  def edit
  end
end
