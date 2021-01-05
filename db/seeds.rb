puts "Deleting all activities..."

Activity.destroy_all
#Comment.destroy_all

puts "Seeding activities..."
10.times do
    activity = Activity.create!(
        title: Faker::Movie.title,
        image_url: "https://www.postfun.com/wp-content/uploads/2019/01/Christmas-Card-Face-Swap-26100-19695.jpg"
    )
    5.times do
        Comment.create!(
            activity: activity,
            content: Faker::Movie.title
        )
    end
end
