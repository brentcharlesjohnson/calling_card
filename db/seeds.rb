User.create!(name:  "Example User",
						 email: "example@railstutorial.org",
						 age:										20,
						 hometown:							"Chicago",
						 password:              "foobar",
						 password_confirmation: "foobar",
						 admin: true)

cities = %w(Dallas Charlotte Los\ Angeles San\ Francisco Seattle New\ York)
99.times do |n|
	name  = Faker::Name.name
	email = "example-#{n+1}@railstutorial.org"
	age = 16 + rand(25)
	hometown = cities.sample
	password = "password"
	User.create!(name:  name,
							 email: email,
							 age:										age,
							 hometown:							hometown,
							 password:              password,
							 password_confirmation: password)
end

users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
