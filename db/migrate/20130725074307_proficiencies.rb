class Proficiencies < ActiveRecord::Migration
  def change
  	create_table :proficiencies do |t|
  		t.integer :proficiency_rating, default: 0
  		t.references :skill
  		t.references :user
  	end
  end
end
