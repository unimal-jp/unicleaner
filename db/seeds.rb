# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = ['千田法孝', '前多邦彦', '岩井益弘', '坂東友章', '寺本真達']
names.each do |name|
  User.create(name: name)
end
# 5.times do |i|
#   Schedule.create(year: 2019, month: 9, week: i + 1, user_id: i + 1)
# end
