class Notice < ApplicationRecord
  belongs_to :user

  has_one_attached :cover
  has_rich_text :body
end
