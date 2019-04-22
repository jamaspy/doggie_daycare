class PagesController < ApplicationController
    def home
        @dogs = Dog.all
        @owners = Owner.all
    end
end
