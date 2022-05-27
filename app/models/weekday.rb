class Weekday < ApplicationRecord
    has_and_belongs_to_many :todos
end
