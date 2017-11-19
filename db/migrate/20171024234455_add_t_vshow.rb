class AddTVshow < ActiveRecord::Migration
  establish_connection "db_#{Rails.env}".to_sym
  
  def change
    create_table :shows do |t|
    t.string :title
    t.string :start_time
    t.string :end_time
    t.string :date
    t.string :description
  end 
  end
end
