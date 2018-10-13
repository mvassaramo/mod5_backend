User.destroy_all
StylistListing.destroy_all
Service.destroy_all
Availability.destroy_all
Request.destroy_all
CustomerBooking.destroy_all
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

availability1 = Availability.create(stylist_listing_id: stylist1.id, time: "12pm", date: "12 Nov", booked: false)
availability2 = Availability.create(stylist_listing_id: stylist2.id, time: "3pm", date: "12 Nov", booked: false)

request1 = Request.create(user_id: jess.id, first_name: jess.first_name, last_name: jess.last_name, title: "looking for...", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )
request2 = Request.create(user_id: jess.id, first_name: jess.first_name, last_name: jess.last_name, title: "looking for another..", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )
request3 = Request.create(user_id: maduri.id, first_name: maduri.first_name, last_name: maduri.last_name, title: "looking for stylist...", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )

customerbooking1 = CustomerBooking.create(user_id: natalie.id)
customerbooking2 = CustomerBooking.create(user_id: sarah.id)

booking1 = Booking.create(availability_id: availability1.id, customer_booking_id: customerbooking1.id)
booking2= Booking.create(availability_id: availability1.id, customer_booking_id: customerbooking2.id)


p "finished seeding"
