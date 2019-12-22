class Lesson < ApplicationRecord
    has_many :yogas
    #has_many :yogas, foreign_key: :lesson_id, primary_key: :lesson_id
end
