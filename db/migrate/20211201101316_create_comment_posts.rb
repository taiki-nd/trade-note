class CreateCommentPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :comment_posts do |t|
      t.text :comment
      t.references :post, null: false, foreign_key: true
      t.references :user
      t.timestamps
    end
  end
end
