require 'pry'

class UsersController < ApplicationController

def show
  @users = User.all
  binding.pry
end

def new
end

end
