class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User"
  has_many :reservations
  has_many :reviews, :through => :reservations
  has_many :guests, :class_name => "User", :through => :reservations
  

# Validations

# You'll need to write a few validations here, they are all pretty straight forward, just take a look at the tests!


# Callbacks

# Whenever a listing is created, the user attached to that listing should be converted into a "host". This means that the user's host field is set to true

# Whenever a listing is destroyed (new callback! Google it!) the user attached to that listing should be converted back to a regular user. That means setting the host field to false.


end
