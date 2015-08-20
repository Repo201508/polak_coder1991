class ReviewsController < ApplicationController
  
  def index
  	@reviews = Review.all
  end

  def new
  	@review = Review.new
  end

  def create
  	@review = current_user.reviews.create(review_params)
    
    if @review.save
  	  redirect_to tatuers_path #@review.product
    end	
  end

  def update
    respond_to do |format|
      
        format.html 
        format.json {render :nothing => true, :status => 200}

    end
  end

  


  

  private
  	def review_params
  		params.require(:review).permit(:content, :vote, :product_id, :user_id)
  	end
end
