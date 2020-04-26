namespace :fridgemaster do
  desc "Create basic sample data for app"
  task sample_data: :environment do
    Item.delete_all
    items = {}

    item = Item.create!(
      name: "Toilet Paper",
      supply_lasts_until: -7.days.ago
    )
    items[:tp] = item

    puts "Sample Data completed."
  end
end