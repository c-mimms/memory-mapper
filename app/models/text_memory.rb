class TextMemory < ApplicationRecord
    belongs_to :user

  # ensure that a user_id is present
  validates :user_id, presence: true

  # ensure that title is present
  validates :title, presence: true
  
end
