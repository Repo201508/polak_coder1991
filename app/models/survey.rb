class Survey < ActiveRecord::Base
	#http://www.createdbypete.com/articles/working-with-nested-forms-and-a-many-to-many-association-in-rails-4/
	has_many :questions
	accepts_nested_attributes_for :questions
end
