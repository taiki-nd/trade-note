class CreateCommentRecords < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_records do |t|
      t.text :comment
      t.references :record, null: false, foreign_key: true
      t.references :user
      t.timestamps
    end
  end
end
