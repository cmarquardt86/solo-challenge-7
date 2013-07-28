class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates :context, presence: true
  validates :name, uniqueness: { case_sensitive: false }


	def user_with_proficiency(rating)
		proficiencies.find_by_proficiency_rating(rating).user
	end

end
