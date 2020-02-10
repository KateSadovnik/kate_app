class ItemsController < ApplicationController

	def new
		@item = Item.new
		
	end


	def create
		#@item = current_user.items.build(items_params)
		@item = Item.new(items_params)
		if @item.save
				redirect_to @item
		else
				render 'users/show'
		end
	end

	def show
		@item = Item.find(params[:id])
		
	end

private

  def items_params
		params.require(:item).permit(:name, :price, :description)
  end


end


