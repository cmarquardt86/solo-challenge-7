class Proficiency < ActiveRecord::Base
  belongs_to :skill
  belongs_to :user
  validates :proficiency_rating, numericality: true
end
