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
    raise params.inspect #the data the form submitted
    #use that data to update the item described in URL
  end

  private
  def item_params
    params.require(:item).permit(:description)
  end
end
