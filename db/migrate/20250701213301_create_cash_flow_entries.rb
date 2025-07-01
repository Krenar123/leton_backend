class CreateCashFlowEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :cash_flow_entries do |t|
      t.date :date
      t.decimal :amount
      t.string :direction

      t.timestamps
    end
  end
end
