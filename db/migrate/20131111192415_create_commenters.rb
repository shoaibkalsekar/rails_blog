class CreateCommenters < ActiveRecord::Migration
  def change
    create_table :commenter do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end
  end
end
