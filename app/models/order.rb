class Order < ActiveRecord::Base
  #validates :date, presence: true, :format => { :with => /\A[a-zA-Z]+\z/, :message => "must be a valid date dd-mm-yyyy" }

  belongs_to :product
  belongs_to :user


  def to_s
  	"#{id}".to_s
  end
end
