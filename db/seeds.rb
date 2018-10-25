User.destroy_all
StylistListing.destroy_all
Service.destroy_all
Availability.destroy_all
Request.destroy_all
Booking.destroy_all
StylistService.destroy_all

p "started seeeding"

annie = User.create(first_name: "Annie", last_name: "Gisslen", email: "annie@email.com", contact_number: "071234567811", profile_image: "image placeholder")
natalie = User.create(first_name: "Natalie", last_name: "Reid", email: "natalie@email.com", contact_number: "071224567811", profile_image: "image placeholder")
jess = User.create(first_name: "Jess", last_name: "Todd", email: "jess@email.com", contact_number: "071224567811", profile_image: "image placeholder")
jasmine = User.create(first_name: "Jasmine", last_name: "Cam", email: "jasmine@email.com", contact_number: "071224567811", profile_image: "image placeholder")
emilia = User.create(first_name: "Emilia", last_name: "Ma", email: "emilia@email.com", contact_number: "071224567811", profile_image: "image placeholder")
tiffany = User.create(first_name: "Tiffany", last_name: "Ly", email: "tiffany@email.com", contact_number: "071224567811", profile_image: "image placeholder")
ciara = User.create(first_name: "Ciara", last_name: "Harris", email: "ciara@email.com", contact_number: "071224567811", profile_image: "image placeholder")
mellisa = User.create(first_name: "Melissa", last_name: "Lad", email: "mellisa@email.com", contact_number: "071224567811", profile_image: "image placeholder")
maria = User.create(first_name: "Maria", last_name: "Sanchez", email: "maria@email.com", contact_number: "071224567811", profile_image: "image placeholder")
harpreet = User.create(first_name: "Harpreet", last_name: "Bolina", email: "harpreet@email.com", contact_number: "071224567811", profile_image: "image placeholder")



stylist1 = StylistListing.create(user_id: jasmine.id, first_name: jasmine.first_name, last_name: jasmine.last_name, tagline: "Hairdressing is really important to me because it allows me to be imaginative. I am committed and passionate to do individual looks for every different person I meet.",
  bio: "Jasmine has been in the hairdressing industry since 2010.
  Jasmine specialises in women's haircuts, precision cuts and enjoys styling long hair. Her clientele would describe Jasmine as a fun, charming, committed and a talented stylist. Jasmine's career highlights include being an assistant at the TONI&GUY London Academy and working with various celebrity clients.",
   area: "Clapham")
stylist2 = StylistListing.create(user_id: jess.id,first_name: jess.first_name, last_name: jess.last_name, tagline: "Jess specialises in advanced aesthetics, skincare and bespoke anti-ageing treatments",
  bio: "I combine the latest trusted non invasive technology with premium brands and years of experience to enhance, rejuvenate and improve my clients skin.", area: "Camden")
stylist3 = StylistListing.create(user_id: maria.id,first_name: maria.first_name, last_name: maria.last_name, tagline: "",
  bio: "Maria specialises in colour, highlights, keratin smoothing treatments and fashion colour and afro relaxers.
  Maria's career highlights so far include passing her L’Oréal colour degree and is working towards completing the master colourist programme with Goldwell.",
   area: "City of London")
 stylist4 = StylistListing.create(user_id: annie.id,first_name: annie.first_name, last_name: annie.last_name, tagline: "",
   bio: 'A driven and confident individual, Annie has 9+ years of experience. Constantly keeping up with the seasonal trends. Assisting backstage at fashion week. "I take a proactive approach in all aspects of my career, which has given my clients the best possible experience, allowing me to acquire a steady and loyal client base"',
    area: "City of London")


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

request1 = Request.create(user_id: jess.id, first_name: jess.first_name, last_name: jess.last_name, title: "looking for...", description: "full description", date: "12/11/2018", time: "7am - 12pm", other_info: "n/a" )
request2 = Request.create(user_id: jess.id, first_name: jess.first_name, last_name: jess.last_name, title: "Need a MUA and hairstylist for Christmas party", description: "Christmas party theme - Great Gatbsy. ", date: "18/12/2018", time: "6pm", other_info: "n/a" )
request3 = Request.create(user_id: maria.id, first_name: maria.first_name, last_name: maria.last_name, title: "looking for stylist...", description: "full description", date: "12 Nov 2018", time: "7am - 12pm", other_info: "n/a" )


booking2 = Booking.create(user_id: natalie.id, availability_id: 1)
p "finished seeding"
