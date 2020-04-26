class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.date :supply_lasts_until

      t.timestamps
    end
  end
end
