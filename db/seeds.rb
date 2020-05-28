# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Member.destroy_all
Gym.destroy_all
Coach.destroy_all
Equipment.destroy_all
Specialty.destroy_all
Membership.destroy_all
GymEquipment.destroy_all
GymReview.destroy_all
CoachReview.destroy_all

20.times {
    Member.create(name: Faker::Name.name, email: Faker::Internet.email, age: rand(18..80))
}

# URLs for images of gyms
gym_urls = "https://media.defense.gov/2015/Sep/30/2001296099/750/422/0/150927-M-AI083-012.JPG,https://media.defense.gov/2015/Sep/30/2001296112/750/422/0/150927-M-AI083-061.JPG,https://live.staticflickr.com/4483/37381382064_a7013d26e8_b.jpg,https://media.defense.gov/2015/Sep/30/2001296116/750/422/0/150927-M-AI083-067.JPG,https://media.defense.gov/2019/Oct/17/2002196535/780/780/0/191011-F-RU983-0009.JPG,https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR-lTGXyCkcRZsTzKmdfn-nNPF854PrCajts9GWSKZ3rr6EVSlz&usqp=CAU,https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSIBEYgty3rtmD9n435eY2ZKCZUS3cgOm6B43zFUG_SUOhx6ICc&usqp=CAU,https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTnyELQ_Oii94x6nmK9NtYKDqEWsrCO3Lt1K8IJhM0mt2vLo77b&usqp=CAU,https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRG2MFowlVAajO5Af7bpRMEKEdWfRlEivxkD6Ta6vzPOqyLkemP&usqp=CAU".split(",")

# iterates through gym image URLS to seed gyms
gym_urls.each do |u|
    Gym.create(name: Faker::Company.name, address: Faker::Address.full_address, is_open: true, img_url: u)
end

# URLs for headshots for coaches
coach_urls = "https://storage.needpix.com/rsynced_images/headshot-2644201_1280.jpg,https://upload.wikimedia.org/wikipedia/commons/d/d3/Serena_Williams_at_the_Australian_Open_2015_%28headshot%29.jpg,https://live.staticflickr.com/2589/3880778500_f60d3cab79_b.jpg,https://p0.pikrepo.com/preview/762/230/smiling-man-in-black-and-gray-pinstriped-suit-jacket-thumbnail.jpg,https://c0.wallpaperflare.com/preview/731/726/327/man-wearing-tank-top.jpg,https://p1.piqsels.com/preview/1015/447/580/portrait-cute-people-kid.jpg,https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRhi0xd6aDL3KXWyN3aZ6sWB_mEZz-lF2dwnkE8KVUZwSAio4bH&usqp=CAU,https://i1.pickpik.com/photos/408/380/13/man-male-beard-sunglasses-thumb.jpg,https://i2.pickpik.com/photos/715/378/367/woman-lady-oaklawn-derby-thumb.jpg,https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRqRNaoKAKH-wbCZ9T_S0h7SNmFWf4eisg5mW_uhxOUlFB3OaVJ&usqp=CAU,https://upload.wikimedia.org/wikipedia/commons/8/8f/Labrador_headshot.jpg,https://c1.wallpaperflare.com/preview/923/146/349/goat-animal-farm-meadow.jpg".split(",")

# iterates through coach image URLS and creates Coaches.  uses gym_count count as top end of random number generator to make sure it uses existing gyms
coach_urls.each do |u|
    Coach.create(name: Faker::Esport.player, gym_id:rand(1..(gym_urls.count)), img_url: u)
end

equipment_names = "Squat Rack,Deadlift Platform,Barbell,Dumbells,Kettlebells,Stairmaster,Combat Dummy,Yoga Studio,Pool,Sauna,Battle Ropes,Basketball Court,Rowing Machine".split(",")
equipment_urls = "https://live.staticflickr.com/1490/23310666774_d3e66981ec_b.jpg,https://c0.wallpaperflare.com/preview/993/513/195/deadlift-workout-fitness-training.jpg,https://images.unsplash.com/photo-1526409499567-9f0af1fcb6d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1544033527-b192daee1f5b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1517344800994-80b20463999c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://media.defense.gov/2010/Nov/17/2000306585/-1/-1/0/101028-F-7527J-078.JPG,https://live.staticflickr.com/8311/7918845074_19f813db9d_b.jpg,https://images.unsplash.com/photo-1522845015757-50bce044e5da?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1572594505398-97a384b34ec8?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1583417267826-aebc4d1542e1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1434596922112-19c563067271?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1523225078415-687408717027?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1045&q=80,https://live.staticflickr.com/7926/33572877318_0ced5b6d1d_b.jpg".split(",")

# Creates instances of equipment - iterates through each URL and also uses each equipment_name instance via e_count variable as the index
e_count = 0
equipment_urls.each do |u|
    Equipment.create(name: equipment_names[e_count], img_url: u)
    e_count += 1
end

specialty_list = "Power Lifting,Crossfit,Yoga,Strongman,Body Building,Jiu-Jitsu,Nutrition,Mobility,Swimming,Running,Endurance,Strength & Conditioning,Judo,Dutch Kickboxing,Boxing".split(",")

specialty_urls = "https://images.unsplash.com/photo-1533560777802-046814bc297c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1541534741688-6078c6bfb5c5?ixlib=rb-1.2.1&auto=format&fit=crop&w=1049&q=80,https://images.unsplash.com/photo-1544367567-0f2fcb009e0b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1094&q=80,https://upload.wikimedia.org/wikipedia/commons/c/c0/Strongman_Deadlift.JPG,https://media.defense.gov/2005/Dec/28/2000572371/780/780/0/051221-F-0000S-003.JPG,https://images.unsplash.com/photo-1549824506-bfeba88865d6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1490645935967-10de6ba17061?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1035&q=80,https://images.unsplash.com/photo-1562771379-eafdca7a02f8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1438029071396-1e831a7fa6d8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1292&q=80,https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80,https://images.unsplash.com/photo-1560073743-0a45c01b68c4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60,https://images.unsplash.com/photo-1557766039-413ea80eab43?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60,https://upload.wikimedia.org/wikipedia/commons/e/ed/Olympic_Judo_London_2012_%2823_of_98%29.jpg,https://media.defense.gov/2013/Apr/16/2000058668/670/394/0/130227-F-WY074-297.JPG,https://cdn.pixabay.com/photo/2019/07/15/12/27/boxing-4339271_960_720.jpg".split(",")

s_count = 0
specialty_list.each do |s|
    Specialty.create(name: s, img_url: specialty_urls[s_count], coach_id: rand(1..(coach_urls.count)))
    s_count += 1
end

20.times { Membership.create(gym_id: rand(1..(gym_urls.count)), member_id: rand(1..20)) }

20.times { GymEquipment.create(equipment_id: rand(1..(equipment_urls.count)), gym_id: rand(1..(gym_urls.count))) }

20.times { GymReview.create(member_id: rand(1..20), gym_id: rand(1..(gym_urls.count)), rating: rand(1..5), content: Faker::Movie.quote) }

20.times { CoachReview.create(coach_id: rand(1..(coach_urls.count)), member_id: rand(1..20), rating: rand(1..5), content: Faker::Movie.quote) }
