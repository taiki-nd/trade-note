class CreateAdvertisements < ActiveRecord::Migration[6.1]
  def change
    create_table :advertisements do |t|
      t.text :img_url
      t.text :af_link
      t.integer :rate_id
      t.integer :company_id
      t.text :content
      t.timestamps
    end
  end
end
