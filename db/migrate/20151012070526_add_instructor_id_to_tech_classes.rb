class AddInstructorIdToTechClasses < ActiveRecord::Migration
  def change
    add_column :tech_classes, :instructor_id, :integer
    add_index :tech_classes, :instructor_id
  end
end
