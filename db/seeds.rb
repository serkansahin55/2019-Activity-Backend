# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting all activities..."

Activity.destroy_all
Comment.destroy_all

puts "Seeding activities..."
10.times do
    activity = Activity.create!(
        title: Faker::Movie.title,
        image_url: "https://www.postfun.com/wp-content/uploads/2019/01/Christmas-Card-Face-Swap-26100-19695.jpg"
    )
    5.times do
        Comment.create!(
            content: Faker::Movie.title,
            activity: activity
        )
    end
end

puts "Done!"

