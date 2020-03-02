class CreatePreferences < ActiveRecord::Migration[6.0]
  def change
    create_table :preferences do |t|
      t.string :name
      t.string :search_value

      t.timestamps
    end
  end
end
