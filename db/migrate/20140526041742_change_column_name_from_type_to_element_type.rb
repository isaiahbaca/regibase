class ChangeColumnNameFromTypeToElementType < ActiveRecord::Migration
  def change
    rename_column :forms, :type, :element_type
  end
end
