class Neighborhood < ActiveRecord::Base
  belongs_to :city
  has_many :listings


  # Neighborhood

  # The same class/instance methods as your City object. Maybe there is a way they can share code?!?!?

end
