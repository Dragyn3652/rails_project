# clean out all current data
Post.delete_all
User.delete_all

users = User.create([

  {
    email: "g@ga.com",
    password: "123456",
    password_confirmation: "123456",
    handle: "camel",
    profile_image_uri: "assets/default-profile-image.jpg",
  },
  {
    email: "r@ga.com",
    password: "123456",
    password_confirmation: "123456",
    handle: "chilly",
    profile_image_uri: "assets/default-profile-image.jpg",
  }

  ])

Post.create([
  {
    user_id: users.sample.id,
    text: "hello world",
    youtube_embed_id: "06I_mitHF54"
  },
  {
    user_id: users.sample.id,
    text: "I love this show",
    tags: "whatcha gon do",
    youtube_embed_id: "H7iuBWkMEn8"
  },
  {
    user_id: users.sample.id,
    text: "Cant switch up barbers anymore",
    tags: "ouch",
    youtube_embed_id: "n7YKvn67CNc"
  },
  {
    user_id: users.sample.id,
    text: "thats an evil monkey",
    tags: "jacked",
    youtube_embed_id: "ELAO09g1GUM"
  },
  {
    user_id: users.sample.id,
    text: "i love watching this gross stuff",
    tags: "ewww",
    youtube_embed_id: "rGBdeQfcjLU"
  },
  {
    user_id: users.sample.id,
    text: "janet is the best",
    tags: "ms jackson",
    youtube_embed_id: "Q-gu1KETjVY"
  },
  {
    user_id: users.sample.id,
    text: "drake could get it",
    tags: "hotline bling",
    youtube_embed_id: "uxpDa-c-4Mc"
  },
  {
    user_id: users.sample.id,
    text: "look at the new dance i like",
    tags: "babies",
    youtube_embed_id: "6D-mUr0H63g"
  },
  {
    user_id: users.sample.id,
    text: "this is a test",
    tags: "beyonce",
    youtube_embed_id: "CWmD3c0Da-s"
    }
  ])
