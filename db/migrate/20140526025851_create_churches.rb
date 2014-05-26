class CreateChurches < ActiveRecord::Migration
  def change
    create_table :churches do |t|
      t.string :name
      t.string :address
      t.string :email
      t.string :pastor
      t.string :phone
      t.string :ag_code
      t.text :notes

      t.timestamps
    end
  end
end
