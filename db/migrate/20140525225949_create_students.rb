class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :youth_group, index: true
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :dob
      t.text :info

      t.timestamps
    end
  end
end
