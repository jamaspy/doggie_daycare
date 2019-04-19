class OwnersController < ApplicationController
  def index
    @owners = Owner.all
  end
  def new
  end

  def show
    @owner = Owner.find params[:id]
  end
end
