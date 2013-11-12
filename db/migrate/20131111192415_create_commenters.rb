class CreateCommenters < ActiveRecord::Migration
  def change
    create_table :commenters do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end
    add_index :comments, :post_id
  end
end
