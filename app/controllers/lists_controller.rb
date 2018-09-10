class ListsController < ApplicationController

  def index
    @list = List.new #this instance variable is completely different from @create instantiation
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new #objs in request cycle only exist in per one action per request
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_path(@list )
  end

  #every action renders in the context of one http request
end
