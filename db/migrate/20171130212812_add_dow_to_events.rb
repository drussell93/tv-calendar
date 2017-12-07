class AddDowToEvents < ActiveRecord::Migration
  def change
    add_column :events, :dow, :integer, array: true, default: []
  end
end
