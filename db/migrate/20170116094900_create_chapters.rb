class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.string :title
      t.datetime :published_at
      t.references :chapter

      t.timestamps
    end
  end
end
