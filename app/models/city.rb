class City < ActiveRecord::Base
  has_many :neighborhoods
  has_many :listings, :through => :neighborhoods


#   The #city_openings method should return all of the Listing objects that are available for the entire span that is inputted. (NOTE: This isn't easy. Check the resources below and try out a few things in console until you're satisfied with your solution. Don't be afraid to google!)

def city_openings(start_date, end_date)
  city_listings_reservations_times
end

def city_listings
  self.listings.map {|listing| listing.reservations }
end

def city_listings_reservations_times
  new_arr = []
  city_listings.each do |listing_res|
    listing_res.each do |list_res_inst| 
      new_arr.push(list_res_inst.checkin, list_res_inst.checkout)
    end
  end
  new_arr
end

# def city_listing_reservations_checkout_times
#    @checkout = city_listings.map { |listing_res| listing_res.map { |list_res_inst| list_res_inst.checkout }}
#end

#def city_listing_reservations_checkin_times
#  @checkin = city_listings.map { |listing_res| listing_res.map { |list_res_inst| list_res_inst.checkin }}
#end

def is_available?
  # if my start date is before checkin date, so far so guucci
  # if my end date is after checkout date, so far so guccci
  # c1.city_listing_reservations_checkout_times.flatten.first.strftime("%m")

  # existing reservation - Jan 1 --> Jan 15

  # res youre tring to make. - Jan 8 --> Jan 16 
end



# The .highest_ratio_res_to_listings method should return the City that is "most full". What that means is it has the highest amount of reservations per listing.

def highest_ratio_res_to_listings

end

# The .most_res method should return the City with the most total number of reservations, no matter if they are all on one listing or otherwise.

def most_res
  
end

end

