class PagesController < ApplicationController
    def home
        @dogs = Dog.all
        @owners = Owner.all
        @users = User.all
    end
end
