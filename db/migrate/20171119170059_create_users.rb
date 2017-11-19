class CreateUsers < ActiveRecord::Migration
  establish_connection "db2_#{Rails.env}".to_sym
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.array :shows

      t.timestamps null: false
    end
  end
end
