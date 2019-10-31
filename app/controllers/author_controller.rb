class AuthorController < ApplicationController
  def show
  end

  def new
    User.new
  end

  def create
    @user = User.new(first_name: params[:subscribe_first_name], last_name: params[:subscribe_last_name], age: params[:subscribe_age], city: params[:subscribe_city], email: params[:subscribe_email], password: params[:subscribe_password] )
    if @user.save
      redirect '/'
    else
      render 'new'
    end
  end

end
