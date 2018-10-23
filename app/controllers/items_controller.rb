class ItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @item = @list.items.build(item_params)
    if @item.save
      redirect_to list_path(@list)
    else
      render 'lists/show'
    end
  end

  def update
    #what Item and i trying to update
    @item = Item.find(params[:id])
    @item.status = params[:item][:status] #0 or 1
    @item.save

    redirect_to list_path(@item.list)
  end

  private
  def item_params
    params.require(:item).permit(:description)
  end
end
