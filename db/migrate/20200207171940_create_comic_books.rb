class CreateComicBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :comic_books do |t|
      t.string :title
      t.string :genre
      t.integer :rating
      t.integer :page_count

      t.timestamps
    end
  end
end
