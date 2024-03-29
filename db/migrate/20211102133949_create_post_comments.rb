class CreatePostComments < ActiveRecord::Migration[6.1]
  def change
    create_table :post_comments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :post, index: true
      t.string :comment

      t.timestamps
    end
  end
end
