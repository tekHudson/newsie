# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ARTICLE_TITLES = ["How to Have a Healthier and More Productive Home Office",
  "10 Step To Successfully Outsourcing Your Online Business",
  "21 Ways to Dominate Youtube: The Ultimate Guide",
  "6 Instant Confidence Boosters",
  "Parenting Guru: From Chaos to Access",
  "Gene Breakthrough Restores The Sight Of People With Inherited Eye Disease And Could Save Thousands From Blindness",
  "Twitter Goes Public: 21 Things You Should Know",
  "Tips That Show Anybody How To Make Money Online – Guaranteed",
  "Thousands Already Make Millions Online And So Can You"]

ARTICLE_TEXT = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo lacus a dui mollis, in interdum sem blandit. Maecenas lorem nisl, molestie eu ornare in, ullamcorper eu eros. Pellentesque est odio, elementum quis diam ac, maximus tincidunt sem. Vestibulum gravida quis lacus at lobortis. Vivamus cursus enim vitae urna euismod, eget laoreet quam imperdiet. Sed vitae mattis nibh, a blandit nunc. Sed auctor luctus velit hendrerit faucibus. Vestibulum nunc elit, blandit non pulvinar eget, luctus vitae sem. Aenean non mi sed arcu consequat ullamcorper. Morbi a ultricies eros. Nulla sed massa lacus. Quisque arcu erat, feugiat et tortor nec, rhoncus vulputate purus."

ARTICLE_TITLES.each_with_index do |title, i|
  Article.create(title: title, text: ARTICLE_TEXT)
end
