class CreateItemLines < ActiveRecord::Migration[8.0]
  def change
    create_table :item_lines do |t|
      t.string :name
      t.decimal :est_cost
      t.decimal :act_cost
      t.decimal :est_revenue
      t.decimal :act_revenue

      t.timestamps
    end
  end
end
