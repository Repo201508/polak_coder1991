class Product < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :large => "700x600!", :medium => "300x300!", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


    belongs_to :tatuer
  	has_many :reviews


  	def count_reviews
  		count = self.reviews.count 
  		if count > 1 
  			p "#{count} reviews"
  		else
  			p "#{count} review"
  		end
  	end

end
