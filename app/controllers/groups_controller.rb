class GroupsController < ApplicationController
  def index
    # flash[:notice] = "Hi, there!"
    # flash[:alert] = "It's time to sleep!"
    flash[:warning] = "This is a warning!"
  end
end
