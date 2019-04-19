class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find params[:id]
  end
  
  def new
  end

  def create
  end

  def edit
  end
end
