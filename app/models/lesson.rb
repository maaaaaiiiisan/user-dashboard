class Lesson < ApplicationRecord
    has_many :yogas, dependent: :destroy
end
