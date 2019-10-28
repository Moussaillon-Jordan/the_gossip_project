class DynamicPageController < ApplicationController
  def welcome
    @first_name = params[:first_name]
  end

  def home

  end

end
