class PagesController < ApplicationController
  def home
    @dogs = Dog.all
    @owners = Owner.all
    @users = User.all

    if @current_user.present?
      render :home
    else
      redirect_to :login
    end
  end
end
