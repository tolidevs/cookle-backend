class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.password_digest :password
      t.string :email

      t.timestamps
    end
  end
end
