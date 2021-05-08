# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
Project.create([{
	name: Faker::Lorem.word,
	description: Faker::Lorem.sentence,
	user_id: '2'
}])
end

5.times do
Task.create([{
	name: Faker::Lorem.word,
	description: Faker::Lorem.sentence,
	status: 'in-progress',
	project_id: Faker::Number.between(from: 6, to: 11)

}])
end