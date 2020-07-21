class Reservation < ActiveRecord::Base
  belongs_to :listing
  belongs_to :guest, :class_name => "User"
  has_one :review

#   Validations

# Should have a checkin and a checkout method.

# Make sure the guest and host aren't the same user.

# Make sure any reservation that is made, doesn't conflict with others.

# Make sure the checkout time is after the check in time.

# Note: Remember, if you're having trouble setting up your models' relationships, Google is your friend. There might be ways of designing associations that you haven't encountered yet but that will vastly simplify your code.

# Methods

# #duration gives the duration in days

# #total_price returns the price using the duration and the price per day of the listing

end
