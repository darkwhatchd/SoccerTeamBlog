class Notice < ApplicationRecord
  belongs_to :user

  validates :title, :description, :cover, :body, :user_id, presence: true

  has_one_attached :cover
  has_rich_text :body
end
