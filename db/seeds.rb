# clean out all current data
Post.delete_all
User.delete_all

garfield = User.create(
  email:                 "bob.garfield@gmail.com",
  handle:                "garfield minus morality",
  profile_image_uri:     "https://goo.gl/RhIeZE",
  password:              "123",
  password_confirmation: "123"
)
harper = User.create(
  email:                 "harper.reilly@mac.com",
  handle:                "harper",
  password:              "123",
  password_confirmation: "123"
)
portland = User.create(
  email:                 "people-power@no-dams.org",
  handle:                "Concerned Portland Citizen",
  profile_image_uri:     "http://goo.gl/yDGFoy",
  password:              "123",
  password_confirmation: "123"
)
eugenius = User.create(
  email:                 "k.eugenio+nospam@eugenius.ca",
  handle:                "eugenius",
  profile_image_uri:     "https://goo.gl/jCXvfu",
  password:              "123",
  password_confirmation: "123"
)
beardo = User.create(
  email:                 "beardo@irony.com",
  handle:                "BE♥RDZ",
  profile_image_uri:     "http://goo.gl/ys48dJ",
  password:              "123",
  password_confirmation: "123"
)

g1 = garfield.mumbles.create(image_uri: "https://i.imgur.com/iCDtnPK.png")
g2 = garfield.mumbles.create(image_uri: "https://i.imgur.com/uHW0npr.png")
g3 = garfield.mumbles.create(image_uri: "https://i.imgur.com/30RHfnL.png")

h1 = harper.posts.create(
  image_uri: "http://www.lamag.com/wp-content/uploads/sites/9/2015/10/Ramen-Burrito.jpg",
  tags:      "#lunchtime #ramenburrito"
)
h2 = harper.posts.create(
  image_uri: "http://www.lamag.com/wp-content/uploads/sites/9/2015/10/Bho-Kho_LittleSisterDTLA_Credit-Dan-Collopy-850x638.jpg",
  tags:      "#bonemarrowpho #meencanta"
)
h3 = harper.posts.create(
  image_uri: "http://www.lamag.com/wp-content/uploads/sites/9/2015/07/tacocitytitlecovertacos.jpg",
  tags:      "#ilovela #diversity #tacothursday"
)

p1 = portland.postss.create(
  text: "<p>To Whom it May Concern,</p>

<p>Complaining about the weather is a form
of climate change denial. If you want
more sun then just keep driving your
Volkswagens or move to LA. I'm just saying,
hypocrisy is a very unattractive trait.</p>

<p>Sincerely,<br>
Concerned Portland Citizen</p>
",
  tags: "#chemtrailsare4real"
)
p2 = portland.posts.create(
  text: "
<p>Dear Editorial Board of the Portland Mercury,</p>

<p>While I enjoy a good joke as much as the
next Portlander, your 'henhouse' reference
strikes me as enforcing patriarchy, not as
mocking it. Also, raising chickens for
their eggs is both animal cruelty and a
form of incarceration.</p>

<p>Sincerely,<br>
Concerned Portland Citizen</p>
",
  tags: "#raisingtheroost"
)

e1 = eugenius.posts.create(
  text:      "Clouds.",
  image_uri: "https://i.imgur.com/K3EjYy3.jpg",
  tags:      "#flight"
)
e2 = eugenius.posts.create(
  text:      "Thinking about time, and what it does to us…",
  image_uri: "https://i.imgur.com/ooNPTeR.jpg",
  tags:      "#usa #longdistancedrive"
)
e3 = eugenius.posts.create(
  text:      "Sometimes I miss being a kid!",
  image_uri: "https://i.imgur.com/gGucXiA.jpg",
  tags:      "#forever"
)
e4 = eugenius.posts.create(
  text:      "Just sitting around at home.",
  image_uri: "https://i.imgur.com/rjooqF4.jpg",
  tags:      "#grounded #texture"
)
e5 = eugenius.posts.create(
  text:      "Old friends and monuments…",
  image_uri: "https://i.imgur.com/PQCbWht.jpg",
  tags:      "#grounded #texture"
)

b1 = beardo.posts.create(
  image_uri: "https://ga-core-production-herokuapp-com.global.ssl.fastly.net/assets/controllers/education/immersives/web-development-immersive/micah-rich-cc41373133ba521256a0cb757cfd6578.jpg",
  tags:      "#nicebeard"
)
b2 = beardo.posts.create(
  image_uri: "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1679/andrew_madden.jpg",
  tags:      "#nicebeard"
)

h2.update created_at: h2.created_at.advance(days:  0, hours: -2)
e2.update created_at: e2.created_at.advance(days:  0, hours: -4)
g1.update created_at: g1.created_at.advance(days:  0, hours: -6)
e4.update created_at: e4.created_at.advance(days:  0, hours: -8)
p1.update created_at: p1.created_at.advance(days:  0, hours: -10)
e5.update created_at: e5.created_at.advance(days:  0, hours: -12)
b2.update created_at: b2.created_at.advance(days:  0, hours:  0)
g2.update created_at: g2.created_at.advance(days: -1, hours: -2)
e1.update created_at: e1.created_at.advance(days: -1, hours: -4)
b1.update created_at: b1.created_at.advance(days: -1, hours: -6)
h3.update created_at: h3.created_at.advance(days: -1, hours: -8)
g3.update created_at: g3.created_at.advance(days: -1, hours: -10)
h1.update created_at: h1.created_at.advance(days: -1, hours: -12)
e3.update created_at: e3.created_at.advance(days: -2, hours:  0)
p2.update created_at: p2.created_at.advance(days: -2, hours: -2)
