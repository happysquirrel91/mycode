class AddNameToThing < ActiveRecord::Migration
  def change
    add_column :things, :name, :string
  end
end
