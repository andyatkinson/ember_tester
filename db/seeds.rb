# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

puts "Seeding..."

Post.create(
  title: "A sample post",
  body: "sample body"
)
Post.create(
  title: "Cool blog post",
  body: "a cool story bro"
)
Post.create(
  title: "Madrid is Faaaaan",
  body: "La historia de Annie Botella"
)

puts "complete!"
