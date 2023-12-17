class HomeController < ApplicationController

  def index
    if params[:search].present?
      @products = Product.where("title LIKE ? or description LIKE ? or price = ?", "%#{params[:search]}%", "%#{params[:search]}%", params[:search].to_f)
    else
      @products = Product.all
    end
  end
end