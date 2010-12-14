class UserController < ApplicationController
  def create
    @user = User.create(params[:user])
  end

  def new
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def edit
  end
  
  def show
  @user = User.create(params[:user])
  end

end
