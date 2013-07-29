class ListsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_filter :find_list, only: [:show, :edit, :update, :destroy]

  def index
    @lists = List.all
  end

  def show
  end

  def new
    @list = List.new 
  end

  def create
    @list = current_user.lists.create(params[:list])
    if @list.valid?
      flash[:notice] = "List has been created."
      redirect_to @list
    else
      flash[:alert] = "List has not been created."
      render "new"
    end
  end 

  def edit
  end

  def update
    if @list.update_attributes(params[:list])
      flash[:notice] = "List Name has been updated."
      redirect_to @list
    else
      flash[:alert] = "List has not been updated."
      render action: 'edit'
    end
  end

  def destroy
    @list.destroy
    flash[:notice] = "List has been deleted."
    redirect_to lists_path
  end

private

  def find_list
    @list = List.find(params[:id])
  end

end
