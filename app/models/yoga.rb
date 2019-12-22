class Yoga < ApplicationRecord
    belongs_to :lesson, foreign_key: :name, primary_key: :name
end
