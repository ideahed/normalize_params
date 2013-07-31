class Survey < ActiveRecord::Base
  has_many  :questions
  has_many  :votes
  belongs_to  :user, dependent: :destroy
  accepts_nested_attributes_for :questions, :votes
  # Remember to create a migration!
end
