class UsersController < ApplicationController
 def create
	@user = User.find params[:id]
	@photo = @user.photos  
 end
end
