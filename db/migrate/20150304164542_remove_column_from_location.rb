class RemoveColumnFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :Assistance, :string
  end
end
