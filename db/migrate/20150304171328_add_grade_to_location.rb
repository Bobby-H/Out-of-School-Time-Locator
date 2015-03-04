class AddGradeToLocation < ActiveRecord::Migration
  def change
    add_column :locations, :grade, :string
  end
end
