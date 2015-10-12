class TechClass < ActiveRecord::Base
  belongs_to :instructor
  has_many :students
  has_many :documents, through: :students
end
