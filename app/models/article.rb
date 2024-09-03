class Article < ApplicationRecord
  # Validate title entry
  validates :title, presence: true
  # Validate body with a minimum length of 10
  validates :body, presence: true, length: { minimum: 10 }
end
