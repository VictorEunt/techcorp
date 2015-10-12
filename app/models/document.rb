class Document < ActiveRecord::Base
  belongs_to :student
  belongs_to :corpus_entry
end
