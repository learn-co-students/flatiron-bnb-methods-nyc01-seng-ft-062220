class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User"


#   Validations

# Should have a description, rating and reservation

# Reviews should only be created on reservations that exist and have already happened.


end
