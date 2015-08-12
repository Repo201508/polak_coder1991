class ReviewsController < ApplicationController
  

  


  def index
  	@reviews = Review.all
  end

  def new
  	@review = Review.new
  end

  def create
  	@review = Review.new(review_params)

  		
  			if @review.save
  		       redirect_to @review.product 	
  			end
  		
  end

  private
  	def review_params
  		params.require(:review).permit(:content, :vote, :product_id)
  	end

    



end
