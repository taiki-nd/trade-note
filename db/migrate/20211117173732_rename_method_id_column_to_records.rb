class RenameMethodIdColumnToRecords < ActiveRecord::Migration[6.1]
  def change
    rename_column :records, :method_id, :order_id
  end
end
