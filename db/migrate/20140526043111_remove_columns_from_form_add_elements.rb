class RemoveColumnsFromFormAddElements < ActiveRecord::Migration
  def change
    remove_column :forms, :element_type
    remove_column :forms, :required
    add_column :forms, :elements, :string
  end
end
