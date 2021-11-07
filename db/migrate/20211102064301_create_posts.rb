class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.belongs_to :category, index: true
      t.string :title
      t.text :description
      t.date :post_date


      t.timestamps
    end
  end
end
