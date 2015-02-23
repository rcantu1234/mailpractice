# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do |n|
  user = User.create(email: "user-#{n}@example.com", password: 'password')

  3.times do
    post = user.posts.create(title: Faker::Lorem.sentence,
                      body: Faker::Lorem.paragraph(3))
  end
end

users = User.all
posts = Post.all

15.times do
      user = users.sample
      post = posts.sample
      Comment.create(user_id: user.id, post_id: post.id, body: Faker::Lorem.paragraph(1))
end
