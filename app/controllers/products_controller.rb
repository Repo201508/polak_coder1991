class ProductsController < ApplicationController

  before_action :authenticate_user!, only: [:create, :show_details]  
  before_action :set_product, only: [:show, :show_details]


  def index
  	@products = Product.all
  end

  def show
    respond_to do |f|
      f.html
      f.js
    end
  end

  def show_details 
    render 'show'
  end


  private
  	def set_product
  		@product = Product.find(params[:id])  
  	end  
end
