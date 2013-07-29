class ItemsController < ApplicationController
  before_filter :find_list

  def new
    @item = @list.items.build
  end

  def create
    @item = @list.items.build(params[:item])
    if @item.save
      flash[:notice] = "Item has been added to list."
      redirect_to @list
    else
      flash[:alert] = "Item has not been added."
      render action: "new"
    end
  end

  def destroy
    @item = @list.items.find(params[:id])
    @item.destroy
    flash[:notice] = "Item has been deleted."
    redirect_to @list
  end

private
  def find_list
    @list = List.find(params[:list_id])
    rescue ActiveRecord::RecordNotFound
      flash[:alert] = "The list you were looking for could not be found."
      redirect_to root_path
  end
end
