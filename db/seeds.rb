# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Hello World!!"
puts "The seed will create an account and 20 groups which have 30 posts"

create_account = User.create([email: "test_user@test.test", password: "test1234", password_confirmation: "test1234", name: "Test User"])

create_groups = for i in 1..20 do
                  Group.create!([title: "Group no.#{i}", description: "The #{i} group has been created by seed", user_id: 1])
                  GroupUser.create(group_id: i, user_id: 1)
                  for k in 1..30 do
                    Post.create!([group_id: "#{i}", content: "The #{k} post create by seed!", user_id: 1])
                  end
                end

