class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :genre_id
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
