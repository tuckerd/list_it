class ListsController < ApplicationController

def index
  @lists = List.all
end

def show
  @list = List.find(params[:id])
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

end
