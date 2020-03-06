class ChangePreferencesTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :preferences, :type, :allergy_or_diet
  end
end
