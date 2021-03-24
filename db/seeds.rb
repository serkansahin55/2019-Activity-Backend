puts "Deleting all activities..."

Activity.destroy_all
Comment.destroy_all

puts "Seeding activities..."
    Activity.create!(
        title: "Bars",
        image_url: "https://infatuation.imgix.net/media/images/reviews/zeitgeist/banners/Zeitgeist.jpg?auto=format&h=840&w=1336"
    )

    Activity.create!(
        title: "Indoor Dining",
        image_url: "https://imgs.6sqft.com/wp-content/uploads/2019/08/06102045/08RedEyeGrill.jpg"
    )

    Activity.create!(
        title: "Movies",
        image_url: "https://cdn.abcotvs.com/dip/images/6011023_031320-cc-ss-empty-theater-img.jpg?w=800&r=16%3A9"
    )

    Activity.create!(
        title: "Gyms",
        image_url: "https://blog.nasm.org/hubfs/cleangym%20%281%29.jpg"
    )

    Activity.create!(
        title: "Dating",
        image_url: "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_5304,w_7952,x_0,y_0/c_limit,dpr_auto,f_auto,fl_lossy,q_80,w_1080/shutterstock_1677529075_fubww6.jpg"
    )

    Activity.create!(
        title: "Amusment Parks",
        image_url: " https://www.hersheypark.com/assets/images/reservations/hp-aerial.jpg"
    )

    Activity.create!(
        title: "Traveling/Vacation",
        image_url: "https://ssl.tzoo-img.com/images/tzoo.1.0.567880.C-vacations-mexico-tulum-istock.jpg?width=1080"
    )

    Comment.create!(
        content: "I miss drinking with others!",
        activity_id: Activity.first.id
    )

    Comment.create!(
        content: "MR yo I miss dddrinking with others!",
        activity_id: Activity.first.id
    )