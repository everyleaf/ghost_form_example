class Meeting < ApplicationRecord
  validates :title, presence: true
end
