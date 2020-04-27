class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :preferences, :search_value, :type
  end
end
