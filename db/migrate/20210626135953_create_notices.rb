class CreateNotices < ActiveRecord::Migration[6.1]
  def change
    create_table :notices do |t|
      t.string :title
      t.text :description
      t.datetime :publish_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
