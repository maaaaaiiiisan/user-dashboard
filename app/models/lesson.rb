class Lesson < ApplicationRecord
    has_many :yogas, foreign_key: :lesson, primary_key: :lesson
end
