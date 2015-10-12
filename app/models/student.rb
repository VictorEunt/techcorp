class Student < ActiveRecord::Base
  belongs_to :tech_class
  has_many :documents
end
