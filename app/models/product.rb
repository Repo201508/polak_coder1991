class Product < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :large => "700x600!", :medium => "300x300!", :thumber => "200x200!", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  belongs_to :tatuer
  has_many :reviews
  has_many :orders


  def count_reviews
  	count = self.reviews.count 
  	if count > 1 
  		p "#{count} reviews"
  	else
  		p "#{count} review"
  	end
  end

    #liczy srednia ocene
    #def sum_reviews
    #  zmienna = Review.sum("vote")
    #  zmienna2 = Review.count
    #  wynik = zmienna/zmienna2
    #end    

  def average_reviews 
    zmienna = self.reviews.sum("vote") 
    zmienna2 = self.reviews.count
      if zmienna2 == 0
        wynik = 0
      else 
        wynik = zmienna/zmienna2
      end 
  end
  #i się wrzuci w widoku -> 
  #<p>Average note of this tattoo <%= @product.sum_reviews %></p>

end
