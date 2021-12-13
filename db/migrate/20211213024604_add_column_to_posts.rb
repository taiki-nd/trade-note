class AddColumnToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :status_id, :integer, default: 1
    add_column :posts, :keyword1, :string
    add_column :posts, :keyword2, :string
    add_column :posts, :keyword3, :string
    add_column :posts, :description, :text
  end
end
