class Yoga < ApplicationRecord
    belongs_to :lesson, foreign_key: :lesson, primary_key: :lesson
end
