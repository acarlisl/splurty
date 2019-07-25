class Quote < ApplicationRecord
  # Ensures the enterred quote will not be blank; will be between 3 and 500
  #  characters long
  validates :saying, presence: true, length: { maximum: 140, minimum: 3 }
  validates :author, presence: true, length: { maximum: 50, minimum: 2 }
end
