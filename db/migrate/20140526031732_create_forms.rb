class CreateForms < ActiveRecord::Migration
  def change
    create_table :forms do |t|
      t.string :name
      t.string :type
      t.string :label
      t.boolean :required

      t.timestamps
    end
  end
end
