User.destroy_all
StylistListing.destroy_all
Service.destroy_all
Availability.destroy_all
Request.destroy_all
Booking.destroy_all
StylistService.destroy_all

p "started seeeding"

maduri = User.create(first_name: "Maduri", last_name: "Vassaramo", email: "maduri@email.com", contact_number: "071234567811", profile_image: "image placeholder")
natalie = User.create(first_name: "Natalie", last_name: "Reid", email: "natalie@email.com", contact_number: "071224567811", profile_image: "image placeholder")
jess = User.create(first_name: "Jess", last_name: "T", email: "jess@email.com", contact_number: "071224567811", profile_image: "image placeholder")

stylist1 = StylistListing.create(user_id: maduri.id, first_name: maduri.first_name, last_name: maduri.last_name, bio: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa strong. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede link mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.", rating: "5", area: "London")
stylist2 = StylistListing.create(user_id: jess.id,first_name: jess.first_name, last_name: jess.last_name, bio: "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa strong. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede link mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi.", rating: "5", area: "London")

service1 = Service.create(name: "MUA")
service2 = Service.create(name: "Hair Stylist")
service3 = Service.create(name: "Waxing")
service4 = Service.create(name: "Nails")
service5 = Service.create(name: "Bridal")

stylistservice1 = StylistService.create(stylist_listing_id:stylist1.id, service_id: service1.id)
stylistservice2 = StylistService.create(stylist_listing_id:stylist1.id, service_id: service2.id)
stylistservice2 = StylistService.create(stylist_listing_id:stylist2.id, service_id: service1.id)
stylistservice2 = StylistService.create(stylist_listing_id:stylist2.id, service_id: service4.id)


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


booking2 = Booking.create(user_id: natalie.id, availability_id: 1)
p "finished seeding"
