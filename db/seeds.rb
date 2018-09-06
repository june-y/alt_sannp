# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

[Client, Trial, Item].each(&:delete_all)

20.times do
  client_name = Faker::Company.name
  primary_pm = Faker::Name.name
  client = Client.create!(name: client_name, primary_pm: primary_pm)
  client.save!
  p "Created #{Client.count} clients"
  rand(2..4).times do
    trial_name = Faker::Color.color_name
    trial = Trial.new(name: trial_name)
    trial.client = client
    trial.save!
    p "Created #{Trial.count} trials"
    rand(3..8).times do
        item_name = Faker::BojackHorseman.character
        description = Faker::BojackHorseman.tongue_twister
        item = Item.new(name: item_name, description: description)
        item.trial = trial
        item.save!
        p "Created #{Item.count} items"
      end
    end
  end
