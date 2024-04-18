User.create!([
  { name: "Bob", email: "bob@test.com", password_digest: "password", image_url: "https://i.redd.it/tmw8hpbcll791.jpg" },
  { name: "Rick", email: "rick@test.com", password_digest: "password", image_url: "https://static.tvtropes.org/pmwiki/pub/images/abcb6534_7913_4eb1_a7a5_62b081ebc628.png" },
])
Trip.create!([
  { user_id: 1, title: "Orlando", image_url: "https://dhltravel.com/wp-content/uploads/2022/05/4899_wdw_50th_beacons_1920x1080_18ce18fd-a6a9-4bdc-98a2-db0882347d51.jpeg", start_time: nil, end_time: nil },
  { user_id: 2, title: "Thanksgiving Cruise", image_url: "https://ik.imgkit.net/3vlqs5axxjf/TAW/uploadedImages/Content-Travel_Types/Cruise/Features/discoveryprincesscruisereview.jpg?tr=w-1200%2Cfo-auto", start_time: nil, end_time: nil },
])
Place.create!([
  { trip_id: 1, address: "Bay Lake, FL. 32836", name: nil, description: "Disney World Magic Kingdom", image_url: "https://visitorlando.widen.net/content/plp8vzssur/jpeg/4899_happily_ever_after_horiz_listing.jpg?crop=true&position=c&q=80&color=ffffffff&u=kggsuk&w=1920&h=1252&quality=80", start_time: nil, end_time: nil },
  { trip_id: 2, address: "Cabo San Lucas Port", name: "El Arco", description: "Natural arc on the Baja Peninsula", image_url: "https://cdn.vallarta-adventures.com/sites/default/files/2019-07/shutterstock_564947215.jpg", start_time: nil, end_time: nil },
])
