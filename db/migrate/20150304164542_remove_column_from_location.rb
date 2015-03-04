class RemoveColumnFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :assistance, :string
  end
end
