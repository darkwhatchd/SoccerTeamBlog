class AddPublishAtToNotice < ActiveRecord::Migration[6.1]
  def change
    add_column :notices, :publish_at, :datetime
  end
end
