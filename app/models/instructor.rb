class Instructor < ActiveRecord::Base
  has_many :tech_classes
  has_many :students, through: :tech_classes
end
