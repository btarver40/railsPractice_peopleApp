hair_colors = ['red','blonde', 'brown', 'black', 'grey']
eye_colors = ['brown', 'hazel', 'green', 'blue', 'black']
genders = ['male', 'female']

10.times do
  Client.create(
    name: Faker::Name.name_with_middle,
    age: Faker::Number.between(1, 10),
    alive: Faker::Boolean.boolean,
    hair_color: hair_colors.sample,
    eye_color: eye_colors.sample,
    gender: genders.sample,
  )
end

puts "Clients seeded"