class UsersController < ApplicationController
	before_action :authenticate_user!

	def show
	  	@user = User.find(params[:id])
	    @items = @user.items.paginate(page: params[:page], per_page: 2)
  	end



end
