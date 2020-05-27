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
  Member.create(name: Faker::Name.name, email: Faker::Internet.email, address: Faker::Address.full_address, age: rand(18..70), img_url: "https://picsum.photos/200")
}

5.times { Gym.create(name: Faker::Company.name, address: Faker::Address.full_address, is_open: true, img_url: "https://picsum.photos/200") }

10.times { Coach.create(name: Faker::Esport.player, gym_id:rand(1..5), img_url: "https://picsum.photos/200") }

20.times { Equipment.create(name: Faker::Hacker.noun, img_url: "https://picsum.photos/200") }

10.times { Specialty.create(name: Faker::Job.title, img_url: "https://picsum.photos/200", coach_id: rand(1..6)) }

20.times { Membership.create(gym_id: rand(1..5), member_id: rand(1..20)) }

20.times { GymEquipment.create(equipment_id: rand(1..20), gym_id: rand(1..5)) }

20.times { GymReview.create(member_id: rand(1..20), gym_id: rand(1..5), rating: rand(1..5), content: Faker::Movie.quote) }

20.times { CoachReview.create(coach_id: rand(1..10), member_id: rand(1..20), rating: rand(1..5), content: Faker::Movie.quote) }






