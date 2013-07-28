class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies
  validates :name, presence: true
  validates :email, presence: true,
      uniqueness: true,
      format: { with: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/,
  	  message: "not a valid email"}

  def proficiency_for(skill)
  	self.proficiencies.find_by_skill_id(skill.id).proficiency_rating
	end

	def set_proficiency_for(skill, rating)
    self.proficiencies.create(skill_id: skill.id, proficiency_rating: rating)
	end

end
