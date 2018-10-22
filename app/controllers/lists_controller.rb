class ListsController < ApplicationController

  def index
    @list = List.new
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @item = @list.item.build #calling items collection.build, 
  end

  def create
    @list = List.new(list_params)
    @list.name = params[:list][:name]
    @list.save

    redirect_to list_url(@list)
  end

  private
  def list_params
    params.require(:list).permit(:name)
  end
end
