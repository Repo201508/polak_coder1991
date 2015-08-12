class TatuersController < ApplicationController
  
  def index
  	@tatuers = Tatuer.all
  end

  def show
  	@tatuer = Tatuer.find(params[:id])
  end
end
