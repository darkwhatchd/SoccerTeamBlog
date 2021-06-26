json.extract! notice, :id, :title, :description, :publish_at, :user_id, :created_at, :updated_at
json.url notice_url(notice, format: :json)
