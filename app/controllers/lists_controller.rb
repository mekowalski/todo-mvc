class ListsController < ApplicationController

  def index
    @list = List.new #this instance variable is completely different from @create instantiation
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(list_params)
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_path(@list)
  end

  #every action renders in the context of one http request

  private
  def list_params #strong params
    params.require(:list).permit(:name)
  end
end
