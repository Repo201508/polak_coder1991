class Tatuer < ActiveRecord::Base

	has_attached_file :avatar, :styles => { :round => "200x200>", :medium => "300x300!", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  	has_attached_file :style, :styles => { :medium => "300x300!", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  	has_many :products


  	def to_s
  		"#{first_name}  #{last_name}"
  	end
end
