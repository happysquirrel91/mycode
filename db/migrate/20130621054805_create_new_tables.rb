class CreateNewTables < ActiveRecord::Migration
  def change
    create_table :new_tables do |t|
      t.integer :columns

      t.timestamps
    end
  end
end
