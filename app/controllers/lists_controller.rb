class ListsController < ApplicationController
before_filter :find_list, only: [:show, :destroy]

def index
  @lists = List.all
end

def show
end

def new
  @list = List.new 
end

def create
  @list = List.create(params[:list])
  if @list.valid?
    flash[:notice] = "List has been created."
    redirect_to @list
  else
    flash[:alert] = "List has not been created."
    render "new"
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
