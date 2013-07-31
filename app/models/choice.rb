class Choice < ActiveRecord::Base
  has_many  :votes
  belongs_to :question, dependent: :destroy
  accepts_nested_attributes_for :votes
  # Remember to create a migration!
end
