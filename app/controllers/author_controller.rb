class AuthorController < ApplicationController
  def show
  end

  def new
    User.new
  end

  def create
    @user = User.new(first_name: params[:subscribe_first_name], last_name: params[:subscribe_last_name], age: params[:subscribe_age], city: params[:subscribe_city], email: params[:subscribe_email], password: params[:subscribe_password], password_confirmation: params[:confirmation_password], city: City.all.sample, description: Faker::Quote.famous_last_words )
    if @user.save
      log_in(@user)
      redirect_to welcome_path(:id => params[:subscribe_first_name].capitalize)
    else
      render 'new'
    end
  end

end
