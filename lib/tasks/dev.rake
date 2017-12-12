namespace :seeddata do

	task restaurant: :environment do

		Restaurant.destroy_all

		500.times do |i|

			Restaurant.create!(name: FFaker::Name.first_name,
				open_time: FFaker::Time.datetime,
				phone: FFaker::PhoneNumber.short_phone_number,
				address: FFaker::Address.street_address,
				description: FFaker::Lorem.paragraph
				)
		end

		puts "fake restaurants have been created !"
		puts "now you hace #{Restaurant.count} restaruants data"

	end

	task blog: :environment do 

		Blog.destroy_all

		100.times do |i|

			
			
			Blog.create!(

				title: FFaker::Lorem.sentence,
				description: FFaker::Lorem.sentence,
				user_id: rand(1...10),
				restaurant_id: (rand(400).to_i),
				photos: "../star_icon.jpg",
				hot_count: 0
				)
		end

		puts "fake blogs have been created !"
		puts "now you hace #{Blog.count} blogs data"
	end
end