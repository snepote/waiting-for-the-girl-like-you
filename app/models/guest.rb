class Guest < ActiveRecord::Base
  validates :name_person_one, :length => {:minimum => 5, :message => ' Name cannot be empty'}
end
