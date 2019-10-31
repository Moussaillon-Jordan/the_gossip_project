class WelcomeController < ApplicationController
  def show
    @first_name = params[:id]
  end

  def index

  end
end
