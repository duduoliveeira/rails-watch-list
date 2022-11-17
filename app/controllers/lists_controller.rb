class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  private

  def lists_params
    params.require(:list).permit(:name)
  end
end
