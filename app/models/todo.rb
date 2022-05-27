class Todo < ApplicationRecord
  has_and_belongs_to_many :weekdays
  belongs_to :user
end
