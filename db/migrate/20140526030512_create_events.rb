class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :email
      t.string :address
      t.string :date
      t.string :time
      t.string :cost
      t.string :forms
      t.boolean :active
      t.text :notes

      t.timestamps
    end
  end
end
