class Question < ActiveRecord::Base
    has_many  :choices
    has_many  :votes
    belongs_to  :survey, dependent: :destroy
    accepts_nested_attributes_for :choices, :votes 
    
  # Remember to create a migration!
end
