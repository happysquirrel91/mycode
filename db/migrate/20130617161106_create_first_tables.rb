class CreateFirstTables < ActiveRecord::Migration
  def change
    create_table :first_tables do |t|
      t.string :name
      t.string :occupation
      t.datetime :date
      t.integer :id

      t.timestamps
    end
  end
end
