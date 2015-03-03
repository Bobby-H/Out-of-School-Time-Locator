class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :program
      t.float :latitude
      t.float :longitude
      t.string :address
      t.integer :zip
      t.string :site
      t.string :contact
      t.string :email
      t.integer :school_Number
      t.integer :school
      t.string :asep
      t.string :sep
      t.string :cost
      t.string :scholarship_financial
      t.string :Assistance
      t.string :transportation
      t.string :bsep
      t.float :website
      t.float :hours
      t.string :phone

      t.timestamps
    end
  end
end
