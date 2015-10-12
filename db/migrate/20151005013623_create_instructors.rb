class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :position

      t.timestamps
    end
  end
end
