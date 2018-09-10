class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    #load the list
    #and which list
    #params have all the data passed by the user
    @list = List.find(params[:id])
  end

end
