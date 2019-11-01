require 'faker'
City.destroy_all
User.destroy_all
Gossip.destroy_all
Tag.destroy_all
Commentaire.destroy_all

10.times do		#cree 10 villes
	City.create(name: Faker::Address.city, zip_code: Faker::Address.zip)
end

10.times do		#cree 10 user avec une ville en reference
	User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: Faker::Internet.email, age: rand(18..99), city: City.all.sample, password: 'azerty', password_confirmation: 'azerty')
end

20.times do |index|	#cree 20 gossip en reference avec user
	Gossip.create(title: "Gossip#{index}",content: Faker::ChuckNorris.fact, user: User.all.sample)
end

10.times do 		#cree 10 tag
	Tag.create(title: "##{Faker::Games::Pokemon.name}")
end

100.times do		#cree 100 comments
	Commentaire.create(content: Faker::Movies::Hobbit.quote, user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id)
end

puts "Base de données remplie chef !"
