# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


puts "🌱 Seeding ItemLines..."

10.times do
  est_cost = rand(10_000..30_000)
  act_cost = est_cost + rand(-2000..5000)
  est_revenue = rand(40_000..60_000)
  act_revenue = est_revenue + rand(-3000..6000)

  ItemLine.create!(
    name: Faker::Company.bs.titleize,
    est_cost: est_cost,
    act_cost: act_cost,
    est_revenue: est_revenue,
    act_revenue: act_revenue
  )
end


puts "🌱 Seeding CashFlowEntries..."

directions = %w[inflow outflow]

30.times do
  CashFlowEntry.create!(
    amount: rand(1000..8000),
    direction: directions.sample,
    date: Faker::Date.between(from: 2.months.ago, to: 2.months.from_now)
  )
end
