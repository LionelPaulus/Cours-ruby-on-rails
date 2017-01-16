class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.datetime :published_at

      t.integer :parent_id

      t.timestamps
    end
  end
end
