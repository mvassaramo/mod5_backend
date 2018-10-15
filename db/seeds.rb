User.destroy_all
StylistListing.destroy_all
Service.destroy_all
Availability.destroy_all
Request.destroy_all
Booking.destroy_all

p "started seeeding"

maduri = User.create(first_name: "Maduri", last_name: "Vassaramo", email: "maduri@email.com", contact_number: "071234567811", profile_image: "image placeholder")
natalie = User.create(first_name: "Natalie", last_name: "Reid", email: "natalie@email.com", contact_number: "071224567811", profile_image: "image placeholder")
jess = User.create(first_name: "Jess", last_name: "T", email: "jess@email.com", contact_number: "071224567811", profile_image: "image placeholder")
sarah = User.create(first_name: "Sarah", last_name: "J", email: "sarah@email.com", contact_number: "071224567811", profile_image: "image placeholder")

stylist1 = StylistListing.create(user_id: maduri.id, first_name: maduri.first_name, last_name: maduri.last_name, bio: "stlyist bio....", rating: "5", area: "London")
stylist2 = StylistListing.create(user_id: jess.id, first_name: jess.first_name, last_name: jess.last_name, bio: "stlyist bio....", rating: "5", area: "London")

service1 = Service.create(stylist_listing_id: stylist1.id, name: "Hair Stylist")
service2 = Service.create(stylist_listing_id: stylist1.id, name: "MUA")

today = Date.today
availabilities = []

StylistListing.all.each do |stylist|
  (0..6).to_a.each do |x|
    availabilities.push({date: today + x, time: "09:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "10:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "11:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "13:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "14:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "15:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "16:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "17:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "18:00", stylist_listing: stylist, booked: false})
    availabilities.push({date: today + x, time: "19:00", stylist_listing: stylist, booked: false})
  end
end

availabilities.each {|availability_data| Availability.create(availability_data)}

request1 = Request.create(user_id: jess.id, first_name: jess.first_name, last_name: jess.last_name, title: "looking for...", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )
request2 = Request.create(user_id: jess.id, first_name: jess.first_name, last_name: jess.last_name, title: "looking for another..", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )
request3 = Request.create(user_id: maduri.id, first_name: maduri.first_name, last_name: maduri.last_name, title: "looking for stylist...", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )


booking1 = Booking.create(user_id: maduri.id, availability_id: 73)
booking2 = Booking.create(user_id: natalie.id, availability_id: 3)
p "finished seeding"
