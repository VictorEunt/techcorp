class CreateCorpusEntries < ActiveRecord::Migration
  def change
    create_table :corpus_entries do |t|
      t.string :note

      t.timestamps
    end
  end
end
