class CreateRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :records do |t|
      t.date :date
      t.integer :hour_id
      t.integer :pair_id
      t.integer :ashi_id
      t.integer :line_main_id
      t.integer :line_sub_id
      t.integer :indi_main_id
      t.integer :indi_sub_id
      t.text :entry_basis
      t.integer :method_id
      t.float :price_renge
      t.integer :result_section_id
      t.text :result_content
      t.references :user
      t.timestamps
    end
  end
end
