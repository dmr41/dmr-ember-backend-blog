User.delete_all
Comment.delete_all
Post.delete_all

user1 = User.create!( name: Faker::Name.name )
user2 = User.create!( name: Faker::Name.name )
user3 = User.create!( name: Faker::Name.name )
user4 = User.create!( name: Faker::Name.name )
user5 = User.create!( name: Faker::Name.name )

post1 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user1
)

post2 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user1
)

post3 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user2
)

post4 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user2
)
post5 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user4
)
post5 = Post.create!(
  title: Faker::Lorem.sentence,
  body: Faker::Lorem.paragraphs.join("\n\n"),
  user: user5
)

Comment.create!(
  user: user3,
  post: post1,
  opinion: Faker::Lorem.paragraph
)

Comment.create!(
  user: user4,
  post: post1,
  opinion: Faker::Lorem.paragraph
)

Comment.create!(
  user: user4,
  post: post2,
  opinion: Faker::Lorem.paragraph
)

Comment.create!(
  user: user4,
  post: post3,
  opinion: Faker::Lorem.paragraph
)

Comment.create!(
  user: user2,
  post: post1,
  opinion: Faker::Lorem.paragraph
)

Comment.create!(
  user: user3,
  post: post1,
  opinion: Faker::Lorem.paragraph
)

Comment.create!(
  user: user1,
  post: post3,
  opinion: Faker::Lorem.paragraph
)
Comment.create!(
  user: user1,
  post: post3,
  opinion: Faker::Lorem.paragraph
)
