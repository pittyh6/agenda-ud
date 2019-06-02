namespace :utils do
  desc "Popular banco de dados."
  task seed: :environment do

  	100.times do |i|
		Contact.create!(
			name: Faker::Name.name,
			email: Faker::Internet.email,
			kind: Kind.all.sample,
			rmk: LeroleroGenerator.sentence([1,2,3].sample)
		)
	end

	puts "Gerado os contatos com sucesso... [OK]"

	Contact.all.each do |contact|
		Random.rand(1..5).times do |i|
			Phone.create!(
					phone:Faker::PhoneNumber.phone_number,
					contact: contact
			)
		end
  	end
  	puts "Gerado os enderecos com sucesso... [OK]"

  	Contact.all.each do |contact|
		Address.create!(
				street: Faker::Address.street_address,
				city: Faker::Address.city,
				state: Faker::Address.state_abbr,
				contact: contact
		)
  	end
  	puts "Gerado os telefones com sucesso... [OK]"
  end
end
