class CreateWebinfos < ActiveRecord::Migration
  def change
    create_table :webinfos do |t|
      t.string :name
      t.string :url

      t.timestamps
    end
  end
end
