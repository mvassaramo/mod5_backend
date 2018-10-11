User.destroy_all
StylistListing.destroy_all
Service.destroy_all
Availability.destroy_all

p "started seeeding"

maduri = User.create(first_name: "Maduri", last_name: "Vassaramo", email: "maduri@email.com", contact_number: "071234567811", profile_image: "image placeholder")
natalie = User.create(first_name: "Natalie", last_name: "Reid", email: "natalie@email.com", contact_number: "071224567811", profile_image: "image placeholder")
jess = User.create(first_name: "Jess", last_name: "T", email: "jess@email.com", contact_number: "071224567811", profile_image: "image placeholder")
sarah = User.create(first_name: "Sarah", last_name: "J", email: "sarah@email.com", contact_number: "071224567811", profile_image: "image placeholder")


stylist1 = StylistListing.create(user_id: maduri.id, rating: "5", area: "London")

service1 = Service.create(stylist_listing_id: stylist1.id, name: "Hair Stylist")
service2 = Service.create(stylist_listing_id: stylist1.id, name: "MUA")

availability1 = Availability.create(stylist_listing_id: stylist1.id, time: "12pm", date: "12 Nov", booked: false)
availability2 = Availability.create(stylist_listing_id: stylist1.id, time: "3pm", date: "12 Nov", booked: false)
availability3 = Availability.create(stylist_listing_id: stylist1.id, time: "6pm", date: "12 Nov", booked: false)

request1 = Request.create(user_id: jess.id, title: "looking for...", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )
request2 = Request.create(user_id: jess.id, title: "looking for. another..", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )
request3 = Request.create(user_id: maduri.id, title: "looking for...", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )

p "finished seeding"
