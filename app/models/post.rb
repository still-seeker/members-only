class Post < ApplicationRecord
  belongs_to :member
  validates :body, presence: true, length: { maximum: 1000 }
end
