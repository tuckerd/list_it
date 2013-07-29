class ItemsController < ApplicationController
before_filter :find_list, only: [:new]

def new
  @item = @list.items.build
  @item.quantity = 1
end

private

def find_list
  @list = List.find(params[:list_id])
end

end
