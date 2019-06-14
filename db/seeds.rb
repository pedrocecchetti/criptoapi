# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
5.times do
    CriptoInfo.create({
        name: Faker::Currency.name,
        symbol: 'BTC',
        last_updated: Faker::Time.between(3.days.ago, Date.today, :all),
        price: '25200'        
    })
end