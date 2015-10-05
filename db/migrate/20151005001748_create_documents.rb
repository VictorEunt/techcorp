class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :genre
      t.string :deliverable
      t.string :classification
      t.string :deadline
      t.string :format
      t.string :grade
      t.text :file_text

      t.timestamps
    end
  end
end
