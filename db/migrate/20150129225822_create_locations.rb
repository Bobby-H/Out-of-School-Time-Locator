class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :site
      t.string :programs
      t.integer :cost
      t.integer :hours
      t.string :contact
      t.string :program
      t.integer :grade
      t.integer :zip

      t.timestamps
    end
  end
end
